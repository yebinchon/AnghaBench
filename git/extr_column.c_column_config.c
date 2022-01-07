
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_error_nonbool (char const*) ;
 int error (char*,char const*,char const*) ;
 scalar_t__ parse_config (unsigned int*,char const*) ;

__attribute__((used)) static int column_config(const char *var, const char *value,
    const char *key, unsigned int *colopts)
{
 if (!value)
  return config_error_nonbool(var);
 if (parse_config(colopts, value))
  return error("invalid column.%s mode %s", key, value);
 return 0;
}
