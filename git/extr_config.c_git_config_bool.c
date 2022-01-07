
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool_or_int (char const*,char const*,int*) ;

int git_config_bool(const char *name, const char *value)
{
 int discard;
 return !!git_config_bool_or_int(name, value, &discard);
}
