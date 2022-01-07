
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 int git_config_bool (char const*,char const*) ;

int git_env_bool(const char *k, int def)
{
 const char *v = getenv(k);
 return v ? git_config_bool(k, v) : def;
}
