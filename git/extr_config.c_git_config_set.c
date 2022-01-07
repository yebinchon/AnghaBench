
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar (char const*,char const*,int *,int ) ;
 int trace2_cmd_set_config (char const*,char const*) ;

void git_config_set(const char *key, const char *value)
{
 git_config_set_multivar(key, value, ((void*)0), 0);

 trace2_cmd_set_config(key, value);
}
