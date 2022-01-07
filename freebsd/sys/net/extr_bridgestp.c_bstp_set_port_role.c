
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {scalar_t__ bs_allsynced; } ;
struct bstp_port {int bp_role; int bp_desg_max_age; int bp_desg_htime; int bp_desg_fdelay; int bp_synced; int bp_agree; int bp_hello_timer; TYPE_1__* bp_ifp; scalar_t__ bp_proposing; int bp_recent_root_timer; int bp_reroot; int bp_sync; int bp_forward_delay_timer; int bp_recent_backup_timer; struct bstp_state* bp_bs; } ;
struct TYPE_2__ {int if_xname; } ;


 int BSTP_DEFAULT_FORWARD_DELAY ;
 int BSTP_IFSTATE_DISCARDING ;





 int DPRINTF (char*,int ) ;
 int bstp_set_port_state (struct bstp_port*,int ) ;
 int bstp_timer_latch (int *) ;
 int bstp_timer_start (int *,int) ;
 int bstp_timer_stop (int *) ;
 int bstp_update_tc (struct bstp_port*) ;

__attribute__((used)) static void
bstp_set_port_role(struct bstp_port *bp, int role)
{
 struct bstp_state *bs = bp->bp_bs;

 if (bp->bp_role == role)
  return;


 switch (bp->bp_role) {
  case 129:
   bstp_timer_start(&bp->bp_forward_delay_timer,
       bp->bp_desg_max_age);
   break;

  case 131:
   bstp_timer_start(&bp->bp_recent_backup_timer,
       bp->bp_desg_htime * 2);

  case 132:
   bstp_timer_start(&bp->bp_forward_delay_timer,
       bp->bp_desg_fdelay);
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
   break;

  case 128:
   bstp_timer_start(&bp->bp_recent_root_timer,
       BSTP_DEFAULT_FORWARD_DELAY);
   break;
 }

 bp->bp_role = role;

 bp->bp_proposing = 0;
 bs->bs_allsynced = 0;


 switch (bp->bp_role) {
  case 129:
  case 132:
  case 131:
   DPRINTF("%s role -> ALT/BACK/DISABLED\n",
       bp->bp_ifp->if_xname);
   bstp_set_port_state(bp, BSTP_IFSTATE_DISCARDING);
   bstp_timer_stop(&bp->bp_recent_root_timer);
   bstp_timer_latch(&bp->bp_forward_delay_timer);
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
   break;

  case 128:
   DPRINTF("%s role -> ROOT\n",
       bp->bp_ifp->if_xname);
   bstp_set_port_state(bp, BSTP_IFSTATE_DISCARDING);
   bstp_timer_latch(&bp->bp_recent_root_timer);
   bp->bp_proposing = 0;
   break;

  case 130:
   DPRINTF("%s role -> DESIGNATED\n",
       bp->bp_ifp->if_xname);
   bstp_timer_start(&bp->bp_hello_timer,
       bp->bp_desg_htime);
   bp->bp_agree = 0;
   break;
 }


 bstp_update_tc(bp);
}
