
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {TYPE_3__* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct TYPE_4__ {int speed; scalar_t__ full_duplex; int link_up; } ;
struct TYPE_5__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;
struct TYPE_6__ {int link_info; int (* poll ) (struct ifnet*) ;} ;
typedef TYPE_3__ cvm_oct_private_t ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_T ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFT_ETHER ;
 int stub1 (struct ifnet*) ;

__attribute__((used)) static void
octe_medstat(struct ifnet *ifp, struct ifmediareq *ifm)
{
 cvm_oct_private_t *priv;
 cvmx_helper_link_info_t link_info;

 priv = ifp->if_softc;

 ifm->ifm_status = IFM_AVALID;
 ifm->ifm_active = IFT_ETHER;

 if (priv->poll == ((void*)0))
  return;
 priv->poll(ifp);

 link_info.u64 = priv->link_info;

 if (!link_info.s.link_up)
  return;

 ifm->ifm_status |= IFM_ACTIVE;

 switch (link_info.s.speed) {
 case 10:
  ifm->ifm_active |= IFM_10_T;
  break;
 case 100:
  ifm->ifm_active |= IFM_100_TX;
  break;
 case 1000:
  ifm->ifm_active |= IFM_1000_T;
  break;
 case 10000:
  ifm->ifm_active |= IFM_10G_T;
  break;
 }

 if (link_info.s.full_duplex)
  ifm->ifm_active |= IFM_FDX;
 else
  ifm->ifm_active |= IFM_HDX;
}
