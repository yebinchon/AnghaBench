
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int if_detach_internal (struct ifnet*,int ,int *) ;

void
if_detach(struct ifnet *ifp)
{

 CURVNET_SET_QUIET(ifp->if_vnet);
 if_detach_internal(ifp, 0, ((void*)0));
 CURVNET_RESTORE();
}
