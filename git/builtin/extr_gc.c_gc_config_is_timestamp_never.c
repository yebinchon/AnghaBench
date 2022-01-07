
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;


 int _ (char*) ;
 int die (int ,char const*,char const*) ;
 int git_config_get_value (char const*,char const**) ;
 scalar_t__ parse_expiry_date (char const*,scalar_t__*) ;

__attribute__((used)) static int gc_config_is_timestamp_never(const char *var)
{
 const char *value;
 timestamp_t expire;

 if (!git_config_get_value(var, &value) && value) {
  if (parse_expiry_date(value, &expire))
   die(_("failed to parse '%s' value '%s'"), var, value);
  return expire == 0;
 }
 return 0;
}
