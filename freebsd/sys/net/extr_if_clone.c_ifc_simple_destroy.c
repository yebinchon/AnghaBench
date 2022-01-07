
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_dunit; } ;
struct if_clone {int ifcs_minifs; int (* ifcs_destroy ) (struct ifnet*) ;} ;


 int EINVAL ;
 int ifc_free_unit (struct if_clone*,int) ;
 int stub1 (struct ifnet*) ;

__attribute__((used)) static int
ifc_simple_destroy(struct if_clone *ifc, struct ifnet *ifp)
{
 int unit;

 unit = ifp->if_dunit;

 if (unit < ifc->ifcs_minifs)
  return (EINVAL);

 ifc->ifcs_destroy(ifp);

 ifc_free_unit(ifc, unit);

 return (0);
}
