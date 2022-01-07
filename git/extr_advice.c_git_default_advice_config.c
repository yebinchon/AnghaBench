
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * preference; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int * advice_colors ;
 TYPE_1__* advice_config ;
 int advice_use_color ;
 int color_parse (char const*,int ) ;
 int config_error_nonbool (char const*) ;
 int git_config_bool (char const*,char const*) ;
 int git_config_colorbool (char const*,char const*) ;
 int parse_advise_color_slot (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ strcasecmp (char const*,int ) ;
 int strcmp (char const*,char*) ;

int git_default_advice_config(const char *var, const char *value)
{
 const char *k, *slot_name;
 int i;

 if (!strcmp(var, "color.advice")) {
  advice_use_color = git_config_colorbool(var, value);
  return 0;
 }

 if (skip_prefix(var, "color.advice.", &slot_name)) {
  int slot = parse_advise_color_slot(slot_name);
  if (slot < 0)
   return 0;
  if (!value)
   return config_error_nonbool(var);
  return color_parse(value, advice_colors[slot]);
 }

 if (!skip_prefix(var, "advice.", &k))
  return 0;

 for (i = 0; i < ARRAY_SIZE(advice_config); i++) {
  if (strcasecmp(k, advice_config[i].name))
   continue;
  *advice_config[i].preference = git_config_bool(var, value);
  return 0;
 }

 return 0;
}
