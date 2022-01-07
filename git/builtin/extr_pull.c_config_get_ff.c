
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ git_config_get_value (char*,char const**) ;
 int git_parse_maybe_bool (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static const char *config_get_ff(void)
{
 const char *value;

 if (git_config_get_value("pull.ff", &value))
  return ((void*)0);

 switch (git_parse_maybe_bool(value)) {
 case 0:
  return "--no-ff";
 case 1:
  return "--ff";
 }

 if (!strcmp(value, "only"))
  return "--ff-only";

 die(_("Invalid value for pull.ff: %s"), value);
}
