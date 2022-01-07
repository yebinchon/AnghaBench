
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_default_config (char const*,char const*,void*) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static int show_config(const char *var, const char *value, void *cb)
{
 if (value)
  printf("%s=%s\n", var, value);
 else
  printf("%s\n", var);
 return git_default_config(var, value, cb);
}
