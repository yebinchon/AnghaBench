
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_maxunit; char* ifc_name; int ifc_unrhdr; } ;


 int EEXIST ;
 int ENOSPC ;
 int IFNAMSIZ ;
 int IF_CLONE_ADDREF (struct if_clone*) ;
 int alloc_unr_specific (int ,int) ;
 int free_unr (int ,int) ;
 int * ifunit (char*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int
ifc_alloc_unit_specific(struct if_clone *ifc, int *unit)
{
 char name[IFNAMSIZ];

 if (*unit > ifc->ifc_maxunit)
  return (ENOSPC);

 if (alloc_unr_specific(ifc->ifc_unrhdr, *unit) == -1)
  return (EEXIST);

 snprintf(name, IFNAMSIZ, "%s%d", ifc->ifc_name, *unit);
 if (ifunit(name) != ((void*)0)) {
  free_unr(ifc->ifc_unrhdr, *unit);
  return (EEXIST);
 }

 IF_CLONE_ADDREF(ifc);

 return (0);
}
