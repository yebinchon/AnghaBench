
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct TYPE_6__ {int link_partner_caps; } ;
struct TYPE_5__ {scalar_t__ link_up; TYPE_3__ if_link; } ;
typedef TYPE_1__ qlnx_host_t ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int QLNX_LINK_CAP_Asym_Pause ;
 int QLNX_LINK_CAP_Pause ;
 int QL_DPRINT2 (TYPE_1__*,char*,...) ;
 int qlnx_get_optics (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static void
qlnx_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)ifp->if_softc;

 QL_DPRINT2(ha, "enter\n");

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (ha->link_up) {
  ifmr->ifm_status |= IFM_ACTIVE;
  ifmr->ifm_active |=
   (IFM_FDX | qlnx_get_optics(ha, &ha->if_link));

  if (ha->if_link.link_partner_caps &
   (QLNX_LINK_CAP_Pause | QLNX_LINK_CAP_Asym_Pause))
   ifmr->ifm_active |=
    (IFM_ETH_RXPAUSE | IFM_ETH_TXPAUSE);
 }

 QL_DPRINT2(ha, "exit (%s)\n", (ha->link_up ? "link_up" : "link_down"));

 return;
}
