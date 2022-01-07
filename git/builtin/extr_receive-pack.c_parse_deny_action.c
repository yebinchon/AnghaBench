
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum deny_action { ____Placeholder_deny_action } deny_action ;


 int DENY_IGNORE ;
 int DENY_REFUSE ;
 int DENY_UPDATE_INSTEAD ;
 int DENY_WARN ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static enum deny_action parse_deny_action(const char *var, const char *value)
{
 if (value) {
  if (!strcasecmp(value, "ignore"))
   return DENY_IGNORE;
  if (!strcasecmp(value, "warn"))
   return DENY_WARN;
  if (!strcasecmp(value, "refuse"))
   return DENY_REFUSE;
  if (!strcasecmp(value, "updateinstead"))
   return DENY_UPDATE_INSTEAD;
 }
 if (git_config_bool(var, value))
  return DENY_REFUSE;
 return DENY_IGNORE;
}
