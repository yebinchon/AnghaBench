
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_parse_key_1 (char const*,int *,int *,int) ;

int git_config_key_is_valid(const char *key)
{
 return !git_config_parse_key_1(key, ((void*)0), ((void*)0), 1);
}
