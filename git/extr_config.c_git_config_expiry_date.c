
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int error (int ,char const*,char const*) ;
 scalar_t__ parse_expiry_date (char const*,int *) ;

int git_config_expiry_date(timestamp_t *timestamp, const char *var, const char *value)
{
 if (!value)
  return config_error_nonbool(var);
 if (parse_expiry_date(value, timestamp))
  return error(_("'%s' for '%s' is not a valid timestamp"),
        value, var);
 return 0;
}
