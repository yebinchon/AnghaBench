
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifbreq {int ifbr_portno; int ifbr_stpflags; int ifbr_ifsflags; int ifbr_addrexceeded; int ifbr_addrmax; int ifbr_addrcnt; int ifbr_role; int ifbr_proto; int ifbr_path_cost; int ifbr_priority; int ifbr_state; int ifbr_ifsname; } ;
struct bstp_port {int bp_flags; scalar_t__ bp_ptp_link; scalar_t__ bp_operedge; int bp_role; int bp_protover; int bp_path_cost; int bp_priority; int bp_state; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_addrexceeded; int bif_addrmax; int bif_addrcnt; TYPE_1__* bif_ifp; int bif_flags; struct bstp_port bif_stp; } ;
struct TYPE_2__ {int if_index; } ;


 int BSTP_PORT_ADMCOST ;
 int BSTP_PORT_ADMEDGE ;
 int BSTP_PORT_AUTOEDGE ;
 int BSTP_PORT_AUTOPTP ;
 int ENOENT ;
 int IFBIF_BSTP_ADMCOST ;
 int IFBIF_BSTP_ADMEDGE ;
 int IFBIF_BSTP_AUTOEDGE ;
 int IFBIF_BSTP_AUTOPTP ;
 int IFBIF_BSTP_EDGE ;
 int IFBIF_BSTP_PTP ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;

__attribute__((used)) static int
bridge_ioctl_gifflags(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;
 struct bridge_iflist *bif;
 struct bstp_port *bp;

 bif = bridge_lookup_member(sc, req->ifbr_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 bp = &bif->bif_stp;
 req->ifbr_ifsflags = bif->bif_flags;
 req->ifbr_state = bp->bp_state;
 req->ifbr_priority = bp->bp_priority;
 req->ifbr_path_cost = bp->bp_path_cost;
 req->ifbr_portno = bif->bif_ifp->if_index & 0xfff;
 req->ifbr_proto = bp->bp_protover;
 req->ifbr_role = bp->bp_role;
 req->ifbr_stpflags = bp->bp_flags;
 req->ifbr_addrcnt = bif->bif_addrcnt;
 req->ifbr_addrmax = bif->bif_addrmax;
 req->ifbr_addrexceeded = bif->bif_addrexceeded;


 if (bp->bp_operedge)
  req->ifbr_ifsflags |= IFBIF_BSTP_EDGE;
 if (bp->bp_flags & BSTP_PORT_AUTOEDGE)
  req->ifbr_ifsflags |= IFBIF_BSTP_AUTOEDGE;
 if (bp->bp_ptp_link)
  req->ifbr_ifsflags |= IFBIF_BSTP_PTP;
 if (bp->bp_flags & BSTP_PORT_AUTOPTP)
  req->ifbr_ifsflags |= IFBIF_BSTP_AUTOPTP;
 if (bp->bp_flags & BSTP_PORT_ADMEDGE)
  req->ifbr_ifsflags |= IFBIF_BSTP_ADMEDGE;
 if (bp->bp_flags & BSTP_PORT_ADMCOST)
  req->ifbr_ifsflags |= IFBIF_BSTP_ADMCOST;
 return (0);
}
