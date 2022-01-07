
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_unrhdr; } ;


 int IF_CLONE_REMREF (struct if_clone*) ;
 int free_unr (int ,int) ;

void
ifc_free_unit(struct if_clone *ifc, int unit)
{

 free_unr(ifc->ifc_unrhdr, unit);
 IF_CLONE_REMREF(ifc);
}
