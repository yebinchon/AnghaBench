
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct apply_state* value; } ;
struct apply_state {int ws_ignore_action; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int ignore_ws_change ;
 int ignore_ws_none ;

__attribute__((used)) static int apply_option_parse_space_change(const struct option *opt,
        const char *arg, int unset)
{
 struct apply_state *state = opt->value;

 BUG_ON_OPT_ARG(arg);

 if (unset)
  state->ws_ignore_action = ignore_ws_none;
 else
  state->ws_ignore_action = ignore_ws_change;
 return 0;
}
