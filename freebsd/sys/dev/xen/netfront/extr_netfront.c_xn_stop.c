
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {struct ifnet* xn_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int XN_LOCK_ASSERT (struct netfront_info*) ;
 int if_link_state_change (struct ifnet*,int ) ;

__attribute__((used)) static void
xn_stop(struct netfront_info *sc)
{
 struct ifnet *ifp;

 XN_LOCK_ASSERT(sc);

 ifp = sc->xn_ifp;

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 if_link_state_change(ifp, LINK_STATE_DOWN);
}
