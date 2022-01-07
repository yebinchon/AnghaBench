
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar_gently (char const*,int *,int *,int) ;

__attribute__((used)) static int remove_all_fetch_refspecs(const char *key)
{
 return git_config_set_multivar_gently(key, ((void*)0), ((void*)0), 1);
}
