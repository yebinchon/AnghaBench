
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 int strcmp (char const*,char*) ;
 int trust_exit_code ;

__attribute__((used)) static int difftool_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "difftool.trustexitcode")) {
  trust_exit_code = git_config_bool(var, value);
  return 0;
 }

 return git_default_config(var, value, cb);
}
