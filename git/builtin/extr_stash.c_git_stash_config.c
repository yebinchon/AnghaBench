
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 void* show_patch ;
 void* show_stat ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_stash_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "stash.showstat")) {
  show_stat = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "stash.showpatch")) {
  show_patch = git_config_bool(var, value);
  return 0;
 }
 return git_default_config(var, value, cb);
}
