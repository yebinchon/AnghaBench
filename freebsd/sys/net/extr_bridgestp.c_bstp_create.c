
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct bstp_state {int bs_protover; } ;
struct bstp_port {int bp_flags; int bp_path_cost; int bp_infois; int bp_mediatask; int bp_rtagetask; int bp_statetask; int bp_priority; struct bstp_state* bp_bs; struct ifnet* bp_ifp; } ;


 int BSTP_DEFAULT_PORT_PRIORITY ;
 int BSTP_IFSTATE_DISCARDING ;
 int BSTP_INFO_DISABLED ;
 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_PORT_AUTOEDGE ;
 int BSTP_PORT_AUTOPTP ;
 int BSTP_ROLE_DISABLED ;
 int BSTP_TCSTATE_INACTIVE ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int TASK_INIT (int *,int ,int ,struct bstp_port*) ;
 int bstp_calc_path_cost (struct bstp_port*) ;
 int bstp_ifupdstatus ;
 int bstp_notify_rtage ;
 int bstp_notify_state ;
 int bstp_set_port_proto (struct bstp_port*,int ) ;
 int bstp_set_port_role (struct bstp_port*,int ) ;
 int bstp_set_port_state (struct bstp_port*,int ) ;
 int bstp_set_port_tc (struct bstp_port*,int ) ;
 int bzero (struct bstp_port*,int) ;

int
bstp_create(struct bstp_state *bs, struct bstp_port *bp, struct ifnet *ifp)
{
 bzero(bp, sizeof(struct bstp_port));

 BSTP_LOCK(bs);
 bp->bp_ifp = ifp;
 bp->bp_bs = bs;
 bp->bp_priority = BSTP_DEFAULT_PORT_PRIORITY;
 TASK_INIT(&bp->bp_statetask, 0, bstp_notify_state, bp);
 TASK_INIT(&bp->bp_rtagetask, 0, bstp_notify_rtage, bp);
 TASK_INIT(&bp->bp_mediatask, 0, bstp_ifupdstatus, bp);


 bp->bp_infois = BSTP_INFO_DISABLED;
 bp->bp_flags = BSTP_PORT_AUTOEDGE|BSTP_PORT_AUTOPTP;
 bstp_set_port_state(bp, BSTP_IFSTATE_DISCARDING);
 bstp_set_port_proto(bp, bs->bs_protover);
 bstp_set_port_role(bp, BSTP_ROLE_DISABLED);
 bstp_set_port_tc(bp, BSTP_TCSTATE_INACTIVE);
 bp->bp_path_cost = bstp_calc_path_cost(bp);
 BSTP_UNLOCK(bs);
 return (0);
}
