
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_net_ctx {TYPE_1__* queues; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct TYPE_2__ {int qp; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int NTB_MEDIATYPE ;
 struct ntb_net_ctx* if_getsoftc (struct ifnet*) ;
 scalar_t__ ntb_transport_link_query (int ) ;

__attribute__((used)) static void
ntb_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct ntb_net_ctx *sc = if_getsoftc(ifp);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = NTB_MEDIATYPE;
 if (ntb_transport_link_query(sc->queues[0].qp))
  ifmr->ifm_status |= IFM_ACTIVE;
}
