
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_port {int bp_tcstate; TYPE_1__* bp_ifp; int bp_operedge; int bp_state; int bp_role; int bp_tc_prop; int bp_rcvdtca; int bp_rcvdtcn; int bp_rcvdtc; int bp_fdbflush; } ;
struct TYPE_2__ {int if_xname; } ;


 int BSTP_IFSTATE_DISCARDING ;
 int BSTP_IFSTATE_FORWARDING ;
 int BSTP_IFSTATE_LEARNING ;
 int BSTP_ROLE_DESIGNATED ;
 int BSTP_ROLE_ROOT ;
 int DPRINTF (char*,int ) ;
 int bstp_set_port_tc (struct bstp_port*,int const) ;

__attribute__((used)) static void
bstp_update_tc(struct bstp_port *bp)
{
 switch (bp->bp_tcstate) {
  case 134:
   if ((bp->bp_role != BSTP_ROLE_DESIGNATED &&
       bp->bp_role != BSTP_ROLE_ROOT) || bp->bp_operedge)
    bstp_set_port_tc(bp, 131);

   if (bp->bp_rcvdtcn)
    bstp_set_port_tc(bp, 128);
   if (bp->bp_rcvdtc)
    bstp_set_port_tc(bp, 129);

   if (bp->bp_tc_prop && !bp->bp_operedge)
    bstp_set_port_tc(bp, 130);

   if (bp->bp_rcvdtca)
    bstp_set_port_tc(bp, 135);
   break;

  case 132:
   if ((bp->bp_state == BSTP_IFSTATE_LEARNING ||
       bp->bp_state == BSTP_IFSTATE_FORWARDING) &&
       bp->bp_fdbflush == 0)
    bstp_set_port_tc(bp, 131);
   break;

  case 131:
   if (bp->bp_rcvdtc || bp->bp_rcvdtcn || bp->bp_rcvdtca ||
       bp->bp_tc_prop)
    bstp_set_port_tc(bp, 131);
   else if (bp->bp_role != BSTP_ROLE_DESIGNATED &&
     bp->bp_role != BSTP_ROLE_ROOT &&
     bp->bp_state == BSTP_IFSTATE_DISCARDING)
    bstp_set_port_tc(bp, 132);

   if ((bp->bp_role == BSTP_ROLE_DESIGNATED ||
       bp->bp_role == BSTP_ROLE_ROOT) &&
       bp->bp_state == BSTP_IFSTATE_FORWARDING &&
       !bp->bp_operedge)
    bstp_set_port_tc(bp, 133);
   break;


  case 133:
  case 128:
  case 129:
  case 130:
  case 135:
   DPRINTF("Invalid TC state for %s\n",
       bp->bp_ifp->if_xname);
   break;
 }

}
