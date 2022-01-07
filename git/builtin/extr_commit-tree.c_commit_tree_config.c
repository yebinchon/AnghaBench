
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,void*) ;
 int git_gpg_config (char const*,char const*,int *) ;

__attribute__((used)) static int commit_tree_config(const char *var, const char *value, void *cb)
{
 int status = git_gpg_config(var, value, ((void*)0));
 if (status)
  return status;
 return git_default_config(var, value, cb);
}
