
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef scalar_t__ mii_contype_t ;
struct TYPE_3__ {scalar_t__ type; char const* name; } ;


 TYPE_1__* fdt_contype_names ;
 size_t nitems (TYPE_1__*) ;

const char *
mii_fdt_contype_to_name(mii_contype_t contype)
{
 u_int i;

 for (i = 0; i < nitems(fdt_contype_names); ++i) {
  if (contype == fdt_contype_names[i].type)
   return (fdt_contype_names[i].name);
 }
 return (fdt_contype_names[0].name);
}
