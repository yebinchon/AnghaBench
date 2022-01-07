
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t pkg_config_key ;
struct TYPE_2__ {scalar_t__ type; char* value; char* val; } ;


 scalar_t__ PKG_CONFIG_STRING ;
 TYPE_1__* c ;

int
config_string(pkg_config_key k, const char **val)
{
 if (c[k].type != PKG_CONFIG_STRING)
  return (-1);

 if (c[k].value != ((void*)0))
  *val = c[k].value;
 else
  *val = c[k].val;

 return (0);
}
