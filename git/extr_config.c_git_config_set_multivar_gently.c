
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar_in_file_gently (int *,char const*,char const*,char const*,int) ;

int git_config_set_multivar_gently(const char *key, const char *value,
       const char *value_regex, int multi_replace)
{
 return git_config_set_multivar_in_file_gently(((void*)0), key, value, value_regex,
            multi_replace);
}
