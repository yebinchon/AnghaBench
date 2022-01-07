
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char** value; } ;


 int BUG_ON_OPT_NEG (int) ;

__attribute__((used)) static int opt_parse_rename_score(const struct option *opt, const char *arg, int unset)
{
 const char **value = opt->value;

 BUG_ON_OPT_NEG(unset);

 if (arg != ((void*)0) && *arg == '=')
  arg = arg + 1;

 *value = arg;
 return 0;
}
