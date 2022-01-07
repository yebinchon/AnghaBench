
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {scalar_t__ action; } ;


 scalar_t__ REPLAY_REVERT ;
 char const* const* cherry_pick_usage ;
 char const* const* revert_usage ;

__attribute__((used)) static const char * const *revert_or_cherry_pick_usage(struct replay_opts *opts)
{
 return opts->action == REPLAY_REVERT ? revert_usage : cherry_pick_usage;
}
