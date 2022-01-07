
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_unrhdr; } ;


 int EEXIST ;
 int ENOSPC ;
 int alloc_unr (int ) ;
 int free_unr (int ,int) ;
 int ifc_alloc_unit_specific (struct if_clone*,int*) ;

__attribute__((used)) static int
ifc_alloc_unit_next(struct if_clone *ifc, int *unit)
{
 int error;

 *unit = alloc_unr(ifc->ifc_unrhdr);
 if (*unit == -1)
  return (ENOSPC);

 free_unr(ifc->ifc_unrhdr, *unit);
 for (;;) {
  error = ifc_alloc_unit_specific(ifc, unit);
  if (error != EEXIST)
   break;

  (*unit)++;
 }

 return (error);
}
