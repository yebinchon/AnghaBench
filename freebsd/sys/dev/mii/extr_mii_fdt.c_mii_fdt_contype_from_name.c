
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef int mii_contype_t ;
struct TYPE_3__ {int type; int name; } ;


 int MII_CONTYPE_UNKNOWN ;
 TYPE_1__* fdt_contype_names ;
 size_t nitems (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;

mii_contype_t
mii_fdt_contype_from_name(const char *name)
{
 u_int i;

 for (i = 0; i < nitems(fdt_contype_names); ++i) {
  if (strcmp(name, fdt_contype_names[i].name) == 0)
   return (fdt_contype_names[i].type);
 }
 return (MII_CONTYPE_UNKNOWN);
}
