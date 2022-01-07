
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_pathname (int *,char const*,char const*) ;
 int init_db_template_dir ;
 int platform_core_config (char const*,char const*,void*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_init_db_config(const char *k, const char *v, void *cb)
{
 if (!strcmp(k, "init.templatedir"))
  return git_config_pathname(&init_db_template_dir, k, v);

 if (starts_with(k, "core."))
  return platform_core_config(k, v, cb);

 return 0;
}
