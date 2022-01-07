
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int PERM_GROUP ;
 int git_config_perm (char*,char const*) ;

__attribute__((used)) static int shared_callback(const struct option *opt, const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);
 *((int *) opt->value) = (arg) ? git_config_perm("arg", arg) : PERM_GROUP;
 return 0;
}
