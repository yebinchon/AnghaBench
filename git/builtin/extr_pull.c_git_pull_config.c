
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECURSE_SUBMODULES_OFF ;
 int RECURSE_SUBMODULES_ON ;
 scalar_t__ config_autostash ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 int recurse_submodules ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_pull_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "rebase.autostash")) {
  config_autostash = git_config_bool(var, value);
  return 0;
 } else if (!strcmp(var, "submodule.recurse")) {
  recurse_submodules = git_config_bool(var, value) ?
   RECURSE_SUBMODULES_ON : RECURSE_SUBMODULES_OFF;
  return 0;
 }
 return git_default_config(var, value, cb);
}
