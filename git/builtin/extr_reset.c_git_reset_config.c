
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,void*) ;
 int git_default_submodule_config (char const*,char const*,void*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_reset_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "submodule.recurse"))
  return git_default_submodule_config(var, value, cb);

 return git_default_config(var, value, cb);
}
