
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rebase_options {int type; } ;
struct option {struct rebase_options* value; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int REBASE_MERGE ;
 int is_interactive (struct rebase_options*) ;

__attribute__((used)) static int parse_opt_merge(const struct option *opt, const char *arg, int unset)
{
 struct rebase_options *opts = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);

 if (!is_interactive(opts))
  opts->type = REBASE_MERGE;

 return 0;
}
