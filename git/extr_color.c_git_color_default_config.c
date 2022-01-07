
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git_color_config (char const*,char const*,void*) ;
 int git_default_config (char const*,char const*,void*) ;

int git_color_default_config(const char *var, const char *value, void *cb)
{
 if (git_color_config(var, value, cb) < 0)
  return -1;

 return git_default_config(var, value, cb);
}
