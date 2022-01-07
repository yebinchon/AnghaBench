
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_REGEX_NONE ;
 int git_config_set_multivar_gently (char const*,char const*,int ,int ) ;

__attribute__((used)) static int write_one_config(const char *key, const char *value, void *data)
{
 return git_config_set_multivar_gently(key,
           value ? value : "true",
           CONFIG_REGEX_NONE, 0);
}
