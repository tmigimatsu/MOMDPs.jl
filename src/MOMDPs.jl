module MOMDPs

include("reexport.jl")
@reexport using POMDPs

export 
    MOMDP,
    create_fully_obs_transition,
    create_partially_obs_transition,
    fully_obs_space,
    part_obs_space,
    initial_fully_obs_distribution,
    initial_part_obs_distribution


abstract type MOMDP{S,A,O} <: POMDP{S,A,O} end

create_fully_obs_transition(pomdp::MOMDP) = error("$(typeof(pomdp)) does not implement create_fully_obs_transition") 
create_partially_obs_transition(pomdp::MOMDP) = error("$(typeof(pomdp)) does not implement create_part_obs_transition")   

fully_obs_space(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement fully_obs_space")   
part_obs_space(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement part_obs_space")   

initial_fully_obs_distribution(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement fully_obs_space")   
initial_part_obs_distribution(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement part_obs_space")   

end # module
