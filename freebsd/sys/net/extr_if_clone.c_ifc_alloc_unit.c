
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int dummy; } ;


 int ifc_alloc_unit_next (struct if_clone*,int*) ;
 int ifc_alloc_unit_specific (struct if_clone*,int*) ;

int
ifc_alloc_unit(struct if_clone *ifc, int *unit)
{
 if (*unit < 0)
  return (ifc_alloc_unit_next(ifc, unit));
 else
  return (ifc_alloc_unit_specific(ifc, unit));
}
