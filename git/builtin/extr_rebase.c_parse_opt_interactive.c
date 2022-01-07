
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rebase_options {int flags; int type; } ;
struct option {struct rebase_options* value; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int REBASE_INTERACTIVE ;
 int REBASE_INTERACTIVE_EXPLICIT ;

__attribute__((used)) static int parse_opt_interactive(const struct option *opt, const char *arg,
     int unset)
{
 struct rebase_options *opts = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);

 opts->type = REBASE_INTERACTIVE;
 opts->flags |= REBASE_INTERACTIVE_EXPLICIT;

 return 0;
}
