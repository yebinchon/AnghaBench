
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bstp_state {int bs_allsynced; } ;
struct TYPE_8__ {int active; } ;
struct TYPE_7__ {int active; } ;
struct TYPE_6__ {int active; } ;
struct bstp_port {int bp_role; int bp_synced; int bp_agree; int bp_flags; int const bp_state; int bp_proposing; TYPE_1__* bp_ifp; int bp_desg_fdelay; int bp_desg_htime; int bp_protover; TYPE_4__ bp_forward_delay_timer; int bp_operedge; TYPE_3__ bp_recent_root_timer; int bp_reroot; int bp_sync; int bp_agreed; int bp_desg_max_age; int bp_ptp_link; TYPE_4__ bp_edge_delay_timer; TYPE_2__ bp_recent_backup_timer; int bp_proposed; } ;
struct TYPE_5__ {int if_xname; } ;


 int BSTP_DEFAULT_MIGRATE_DELAY ;

 int const BSTP_IFSTATE_FORWARDING ;

 int BSTP_PORT_DISPUTED ;
 int BSTP_PORT_NEWINFO ;
 int BSTP_PROTO_RSTP ;





 int DPRINTF (char*,int ) ;
 int bstp_rerooted (struct bstp_state*,struct bstp_port*) ;
 int bstp_set_all_reroot (struct bstp_state*) ;
 int bstp_set_all_sync (struct bstp_state*) ;
 int bstp_set_port_state (struct bstp_port*,int const) ;
 int bstp_timer_start (TYPE_4__*,int ) ;
 int bstp_timer_stop (TYPE_3__*) ;
 int bstp_transmit (struct bstp_state*,struct bstp_port*) ;

__attribute__((used)) static void
bstp_update_roles(struct bstp_state *bs, struct bstp_port *bp)
{
 switch (bp->bp_role) {
 case 129:

  if (bp->bp_sync || !bp->bp_synced || bp->bp_reroot) {
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
  }
  break;

 case 132:
 case 131:
  if ((bs->bs_allsynced && !bp->bp_agree) ||
      (bp->bp_proposed && bp->bp_agree)) {
   bp->bp_proposed = 0;
   bp->bp_agree = 1;
   bp->bp_flags |= BSTP_PORT_NEWINFO;
   DPRINTF("%s -> ALTERNATE_AGREED\n",
       bp->bp_ifp->if_xname);
  }

  if (bp->bp_proposed && !bp->bp_agree) {
   bstp_set_all_sync(bs);
   bp->bp_proposed = 0;
   DPRINTF("%s -> ALTERNATE_PROPOSED\n",
       bp->bp_ifp->if_xname);
  }


  if (bp->bp_sync || !bp->bp_synced || bp->bp_reroot) {
   bp->bp_sync = 0;
   bp->bp_synced = 1;
   bp->bp_reroot = 0;
   DPRINTF("%s -> ALTERNATE_PORT\n", bp->bp_ifp->if_xname);
  }
  break;

 case 128:
  if (bp->bp_state != BSTP_IFSTATE_FORWARDING && !bp->bp_reroot) {
   bstp_set_all_reroot(bs);
   DPRINTF("%s -> ROOT_REROOT\n", bp->bp_ifp->if_xname);
  }

  if ((bs->bs_allsynced && !bp->bp_agree) ||
      (bp->bp_proposed && bp->bp_agree)) {
   bp->bp_proposed = 0;
   bp->bp_sync = 0;
   bp->bp_agree = 1;
   bp->bp_flags |= BSTP_PORT_NEWINFO;
   DPRINTF("%s -> ROOT_AGREED\n", bp->bp_ifp->if_xname);
  }

  if (bp->bp_proposed && !bp->bp_agree) {
   bstp_set_all_sync(bs);
   bp->bp_proposed = 0;
   DPRINTF("%s -> ROOT_PROPOSED\n", bp->bp_ifp->if_xname);
  }

  if (bp->bp_state != BSTP_IFSTATE_FORWARDING &&
      (bp->bp_forward_delay_timer.active == 0 ||
      (bstp_rerooted(bs, bp) &&
      bp->bp_recent_backup_timer.active == 0 &&
      bp->bp_protover == BSTP_PROTO_RSTP))) {
   switch (bp->bp_state) {
   case 134:
    bstp_set_port_state(bp, 133);
    break;
   case 133:
    bstp_set_port_state(bp,
        BSTP_IFSTATE_FORWARDING);
    break;
   }
  }

  if (bp->bp_state == BSTP_IFSTATE_FORWARDING && bp->bp_reroot) {
   bp->bp_reroot = 0;
   DPRINTF("%s -> ROOT_REROOTED\n", bp->bp_ifp->if_xname);
  }
  break;

 case 130:
  if (bp->bp_recent_root_timer.active == 0 && bp->bp_reroot) {
   bp->bp_reroot = 0;
   DPRINTF("%s -> DESIGNATED_RETIRED\n",
       bp->bp_ifp->if_xname);
  }

  if ((bp->bp_state == 134 &&
      !bp->bp_synced) || (bp->bp_agreed && !bp->bp_synced) ||
      (bp->bp_operedge && !bp->bp_synced) ||
      (bp->bp_sync && bp->bp_synced)) {
   bstp_timer_stop(&bp->bp_recent_root_timer);
   bp->bp_synced = 1;
   bp->bp_sync = 0;
   DPRINTF("%s -> DESIGNATED_SYNCED\n",
       bp->bp_ifp->if_xname);
  }

  if (bp->bp_state != BSTP_IFSTATE_FORWARDING &&
      !bp->bp_agreed && !bp->bp_proposing &&
      !bp->bp_operedge) {
   bp->bp_proposing = 1;
   bp->bp_flags |= BSTP_PORT_NEWINFO;
   bstp_timer_start(&bp->bp_edge_delay_timer,
       (bp->bp_ptp_link ? BSTP_DEFAULT_MIGRATE_DELAY :
        bp->bp_desg_max_age));
   DPRINTF("%s -> DESIGNATED_PROPOSE\n",
       bp->bp_ifp->if_xname);
  }

  if (bp->bp_state != BSTP_IFSTATE_FORWARDING &&
      (bp->bp_forward_delay_timer.active == 0 || bp->bp_agreed ||
      bp->bp_operedge) &&
      (bp->bp_recent_root_timer.active == 0 || !bp->bp_reroot) &&
      !bp->bp_sync) {
   if (bp->bp_agreed)
    DPRINTF("%s -> AGREED\n", bp->bp_ifp->if_xname);




   if (bp->bp_agreed || bp->bp_operedge ||
       bp->bp_state == 133) {
    bstp_set_port_state(bp,
        BSTP_IFSTATE_FORWARDING);
    bp->bp_agreed = bp->bp_protover;
   } else if (bp->bp_state == 134)
    bstp_set_port_state(bp, 133);
  }

  if (((bp->bp_sync && !bp->bp_synced) ||
      (bp->bp_reroot && bp->bp_recent_root_timer.active) ||
      (bp->bp_flags & BSTP_PORT_DISPUTED)) && !bp->bp_operedge &&
      bp->bp_state != 134) {
   bstp_set_port_state(bp, 134);
   bp->bp_flags &= ~BSTP_PORT_DISPUTED;
   bstp_timer_start(&bp->bp_forward_delay_timer,
       bp->bp_protover == BSTP_PROTO_RSTP ?
       bp->bp_desg_htime : bp->bp_desg_fdelay);
   DPRINTF("%s -> DESIGNATED_DISCARD\n",
       bp->bp_ifp->if_xname);
  }
  break;
 }

 if (bp->bp_flags & BSTP_PORT_NEWINFO)
  bstp_transmit(bs, bp);
}
