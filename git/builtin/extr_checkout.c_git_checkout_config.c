
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_opts {int diff_options; } ;


 int git_default_submodule_config (char const*,char const*,int *) ;
 int git_xmerge_config (char const*,char const*,int *) ;
 int handle_ignore_submodules_arg (int *,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_checkout_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "diff.ignoresubmodules")) {
  struct checkout_opts *opts = cb;
  handle_ignore_submodules_arg(&opts->diff_options, value);
  return 0;
 }

 if (starts_with(var, "submodule."))
  return git_default_submodule_config(var, value, ((void*)0));

 return git_xmerge_config(var, value, ((void*)0));
}
