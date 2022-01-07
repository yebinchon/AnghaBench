
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct apply_state* value; } ;
struct apply_state {int p_value_known; int p_value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int atoi (char const*) ;

__attribute__((used)) static int apply_option_parse_p(const struct option *opt,
    const char *arg,
    int unset)
{
 struct apply_state *state = opt->value;

 BUG_ON_OPT_NEG(unset);

 state->p_value = atoi(arg);
 state->p_value_known = 1;
 return 0;
}
