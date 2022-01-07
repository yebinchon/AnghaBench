
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,void*) ;
 int git_gpg_config (char const*,char const*,void*) ;

__attribute__((used)) static int git_verify_tag_config(const char *var, const char *value, void *cb)
{
 int status = git_gpg_config(var, value, cb);
 if (status)
  return status;
 return git_default_config(var, value, cb);
}
