
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,int *) ;
 int git_gpg_config (char const*,char const*,int *) ;

__attribute__((used)) static int git_am_config(const char *k, const char *v, void *cb)
{
 int status;

 status = git_gpg_config(k, v, ((void*)0));
 if (status)
  return status;

 return git_default_config(k, v, ((void*)0));
}
