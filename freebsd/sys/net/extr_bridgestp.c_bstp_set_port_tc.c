
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int bs_last_tc_time; } ;
struct bstp_port {int bp_tcstate; int bp_fdbflush; int bp_tc_ack; TYPE_1__* bp_ifp; int bp_rcvdtca; int bp_tc_timer; int bp_tc_prop; int bp_rtagetask; int bp_role; int bp_rcvdtcn; int bp_rcvdtc; int bp_flags; struct bstp_state* bp_bs; } ;
struct TYPE_2__ {int if_xname; } ;


 int BSTP_PORT_NEWINFO ;
 int BSTP_ROLE_DESIGNATED ;
 int DPRINTF (char*,int ) ;
 int bstp_set_other_tcprop (struct bstp_port*) ;
 int bstp_set_timer_tc (struct bstp_port*) ;
 int bstp_timer_stop (int *) ;
 int bstp_transmit (struct bstp_state*,struct bstp_port*) ;
 int getmicrotime (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
bstp_set_port_tc(struct bstp_port *bp, int state)
{
 struct bstp_state *bs = bp->bp_bs;

 bp->bp_tcstate = state;


 switch (bp->bp_tcstate) {
  case 134:
   DPRINTF("%s -> TC_ACTIVE\n", bp->bp_ifp->if_xname);

   break;

  case 132:
   bstp_timer_stop(&bp->bp_tc_timer);

   bp->bp_fdbflush = 1;
   taskqueue_enqueue(taskqueue_swi, &bp->bp_rtagetask);
   bp->bp_tc_ack = 0;
   DPRINTF("%s -> TC_INACTIVE\n", bp->bp_ifp->if_xname);
   break;

  case 131:
   bp->bp_rcvdtc = 0;
   bp->bp_rcvdtcn = 0;
   bp->bp_rcvdtca = 0;
   bp->bp_tc_prop = 0;
   DPRINTF("%s -> TC_LEARNING\n", bp->bp_ifp->if_xname);
   break;

  case 133:
   bstp_set_timer_tc(bp);
   bstp_set_other_tcprop(bp);

   bp->bp_flags |= BSTP_PORT_NEWINFO;
   bstp_transmit(bs, bp);
   getmicrotime(&bs->bs_last_tc_time);
   DPRINTF("%s -> TC_DETECTED\n", bp->bp_ifp->if_xname);
   bp->bp_tcstate = 134;
   break;

  case 128:
   bstp_set_timer_tc(bp);
   DPRINTF("%s -> TC_TCN\n", bp->bp_ifp->if_xname);

  case 129:
   bp->bp_rcvdtc = 0;
   bp->bp_rcvdtcn = 0;
   if (bp->bp_role == BSTP_ROLE_DESIGNATED)
    bp->bp_tc_ack = 1;

   bstp_set_other_tcprop(bp);
   DPRINTF("%s -> TC_TC\n", bp->bp_ifp->if_xname);
   bp->bp_tcstate = 134;
   break;

  case 130:

   bp->bp_fdbflush = 1;
   taskqueue_enqueue(taskqueue_swi, &bp->bp_rtagetask);
   bp->bp_tc_prop = 0;
   bstp_set_timer_tc(bp);
   DPRINTF("%s -> TC_PROPAG\n", bp->bp_ifp->if_xname);
   bp->bp_tcstate = 134;
   break;

  case 135:
   bstp_timer_stop(&bp->bp_tc_timer);
   bp->bp_rcvdtca = 0;
   DPRINTF("%s -> TC_ACK\n", bp->bp_ifp->if_xname);
   bp->bp_tcstate = 134;
   break;
 }
}
