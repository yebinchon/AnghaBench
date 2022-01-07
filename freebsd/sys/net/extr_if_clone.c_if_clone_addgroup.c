
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct if_clone {int ifc_flags; int ifc_name; } ;


 int IFC_NOGROUP ;
 int IF_CLONE_REMREF (struct if_clone*) ;
 int if_addgroup (struct ifnet*,int ) ;

void
if_clone_addgroup(struct ifnet *ifp, struct if_clone *ifc)
{
 if ((ifc->ifc_flags & IFC_NOGROUP) == 0) {
  if_addgroup(ifp, ifc->ifc_name);
  IF_CLONE_REMREF(ifc);
 }
}
