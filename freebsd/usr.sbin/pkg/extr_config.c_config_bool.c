
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t pkg_config_key ;
struct TYPE_2__ {scalar_t__ type; char* value; char* val; } ;


 scalar_t__ PKG_CONFIG_BOOL ;
 scalar_t__ boolstr_to_bool (char const*) ;
 TYPE_1__* c ;

int
config_bool(pkg_config_key k, bool *val)
{
 const char *value;

 if (c[k].type != PKG_CONFIG_BOOL)
  return (-1);

 *val = 0;

 if (c[k].value != ((void*)0))
  value = c[k].value;
 else
  value = c[k].val;

 if (boolstr_to_bool(value))
  *val = 1;

 return (0);
}
