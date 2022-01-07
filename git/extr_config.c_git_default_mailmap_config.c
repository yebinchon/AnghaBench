
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_pathname (int *,char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int git_mailmap_blob ;
 int git_mailmap_file ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_default_mailmap_config(const char *var, const char *value)
{
 if (!strcmp(var, "mailmap.file"))
  return git_config_pathname(&git_mailmap_file, var, value);
 if (!strcmp(var, "mailmap.blob"))
  return git_config_string(&git_mailmap_blob, var, value);


 return 0;
}
