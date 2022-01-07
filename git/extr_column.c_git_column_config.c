
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int column_config (char const*,char const*,char const*,unsigned int*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char const*) ;

int git_column_config(const char *var, const char *value,
        const char *command, unsigned int *colopts)
{
 const char *it;

 if (!skip_prefix(var, "column.", &it))
  return 0;

 if (!strcmp(it, "ui"))
  return column_config(var, value, "ui", colopts);

 if (command && !strcmp(it, command))
  return column_config(var, value, it, colopts);

 return 0;
}
