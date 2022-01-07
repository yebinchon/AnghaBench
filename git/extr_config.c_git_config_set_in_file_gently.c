
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar_in_file_gently (char const*,char const*,char const*,int *,int ) ;

int git_config_set_in_file_gently(const char *config_filename,
      const char *key, const char *value)
{
 return git_config_set_multivar_in_file_gently(config_filename, key, value, ((void*)0), 0);
}
