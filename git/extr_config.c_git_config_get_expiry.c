
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;


 int _ (char*) ;
 scalar_t__ approxidate (char const*) ;
 int git_config_get_string_const (char const*,char const**) ;
 int git_die_config (char const*,int ,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

int git_config_get_expiry(const char *key, const char **output)
{
 int ret = git_config_get_string_const(key, output);
 if (ret)
  return ret;
 if (strcmp(*output, "now")) {
  timestamp_t now = approxidate("now");
  if (approxidate(*output) >= now)
   git_die_config(key, _("Invalid %s: '%s'"), key, *output);
 }
 return ret;
}
