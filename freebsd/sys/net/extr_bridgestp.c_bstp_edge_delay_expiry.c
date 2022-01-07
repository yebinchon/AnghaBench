
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int dummy; } ;
struct bstp_port {int bp_flags; scalar_t__ bp_protover; scalar_t__ bp_role; int bp_operedge; TYPE_1__* bp_ifp; scalar_t__ bp_proposing; } ;
struct TYPE_2__ {int if_xname; } ;


 int BSTP_PORT_AUTOEDGE ;
 scalar_t__ BSTP_PROTO_RSTP ;
 scalar_t__ BSTP_ROLE_DESIGNATED ;
 int DPRINTF (char*,int ) ;

__attribute__((used)) static void
bstp_edge_delay_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if ((bp->bp_flags & BSTP_PORT_AUTOEDGE) &&
     bp->bp_protover == BSTP_PROTO_RSTP && bp->bp_proposing &&
     bp->bp_role == BSTP_ROLE_DESIGNATED) {
  bp->bp_operedge = 1;
  DPRINTF("%s -> edge port\n", bp->bp_ifp->if_xname);
 }
}
