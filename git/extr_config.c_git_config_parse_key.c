
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_parse_key_1 (char const*,char**,int*,int ) ;

int git_config_parse_key(const char *key, char **store_key, int *baselen)
{
 return git_config_parse_key_1(key, store_key, baselen, 0);
}
