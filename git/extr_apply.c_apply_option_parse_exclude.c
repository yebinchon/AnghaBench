
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct apply_state* value; } ;
struct apply_state {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int add_name_limit (struct apply_state*,char const*,int) ;

__attribute__((used)) static int apply_option_parse_exclude(const struct option *opt,
          const char *arg, int unset)
{
 struct apply_state *state = opt->value;

 BUG_ON_OPT_NEG(unset);

 add_name_limit(state, arg, 1);
 return 0;
}
