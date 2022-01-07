
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ userdiff_config (char const*,char const*) ;

__attribute__((used)) static int git_cat_file_config(const char *var, const char *value, void *cb)
{
 if (userdiff_config(var, value) < 0)
  return -1;

 return git_default_config(var, value, cb);
}
