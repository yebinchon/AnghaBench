
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_patch_id_config(const char *var, const char *value, void *cb)
{
 int *stable = cb;

 if (!strcmp(var, "patchid.stable")) {
  *stable = git_config_bool(var, value);
  return 0;
 }

 return git_default_config(var, value, cb);
}
