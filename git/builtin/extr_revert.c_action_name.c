
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {scalar_t__ action; } ;


 scalar_t__ REPLAY_REVERT ;

__attribute__((used)) static const char *action_name(const struct replay_opts *opts)
{
 return opts->action == REPLAY_REVERT ? "revert" : "cherry-pick";
}
