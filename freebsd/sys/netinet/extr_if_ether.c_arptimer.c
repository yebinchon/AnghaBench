
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_3__ {struct in_addr addr4; } ;
struct llentry {int la_flags; int ln_state; int r_skip_req; TYPE_2__* lle_tbl; int lle_timer; int la_expire; int la_preempt; TYPE_1__ r_l3addr; } ;
struct ifnet {int if_vnet; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_4__ {struct ifnet* llt_ifp; } ;


 int ARPSTAT_ADD (int ,size_t) ;
 int ARPSTAT_INC (int ) ;




 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EVENTHANDLER_INVOKE (int ,struct llentry*,int) ;
 int IF_AFDATA_LOCK (struct ifnet*) ;
 int IF_AFDATA_UNLOCK (struct ifnet*) ;
 int LLENTRY_EXPIRED ;
 int LLENTRY_TIMEDOUT ;
 int LLE_DELETED ;
 int LLE_LINKED ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_REQ_LOCK (struct llentry*) ;
 int LLE_REQ_UNLOCK (struct llentry*) ;
 int LLE_STATIC ;
 int LLE_VALID ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int V_arpt_rexmit ;
 int arprequest (struct ifnet*,int *,struct in_addr*,int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_schedule (int *,int) ;
 int callout_stop (int *) ;
 int dropped ;
 int hz ;
 int lle_event ;
 size_t llentry_free (struct llentry*) ;
 int lltable_unlink_entry (TYPE_2__*,struct llentry*) ;
 int time_uptime ;
 int timeouts ;

__attribute__((used)) static void
arptimer(void *arg)
{
 struct llentry *lle = (struct llentry *)arg;
 struct ifnet *ifp;
 int r_skip_req;

 if (lle->la_flags & LLE_STATIC) {
  return;
 }
 LLE_WLOCK(lle);
 if (callout_pending(&lle->lle_timer)) {
  LLE_WUNLOCK(lle);
   return;
  }
 ifp = lle->lle_tbl->llt_ifp;
 CURVNET_SET(ifp->if_vnet);

 switch (lle->ln_state) {
 case 129:
  LLE_REQ_LOCK(lle);
  lle->r_skip_req = 1;
  LLE_REQ_UNLOCK(lle);
  lle->ln_state = 128;
  callout_schedule(&lle->lle_timer, hz * V_arpt_rexmit);
  LLE_WUNLOCK(lle);
  CURVNET_RESTORE();
  return;
 case 128:
  LLE_REQ_LOCK(lle);
  r_skip_req = lle->r_skip_req;
  LLE_REQ_UNLOCK(lle);

  if (r_skip_req == 0 && lle->la_preempt > 0) {

   struct epoch_tracker et;
   struct in_addr dst;

   dst = lle->r_l3addr.addr4;
   lle->la_preempt--;
   callout_schedule(&lle->lle_timer, hz * V_arpt_rexmit);
   LLE_WUNLOCK(lle);
   NET_EPOCH_ENTER(et);
   arprequest(ifp, ((void*)0), &dst, ((void*)0));
   NET_EPOCH_EXIT(et);
   CURVNET_RESTORE();
   return;
  }

  if (lle->la_expire > time_uptime) {
   callout_schedule(&lle->lle_timer, hz * V_arpt_rexmit);
   LLE_WUNLOCK(lle);
   CURVNET_RESTORE();
   return;
  }
  break;
 case 130:
 case 131:
  break;
 }

 if ((lle->la_flags & LLE_DELETED) == 0) {
  int evt;

  if (lle->la_flags & LLE_VALID)
   evt = LLENTRY_EXPIRED;
  else
   evt = LLENTRY_TIMEDOUT;
  EVENTHANDLER_INVOKE(lle_event, lle, evt);
 }

 callout_stop(&lle->lle_timer);


 LLE_WUNLOCK(lle);
 IF_AFDATA_LOCK(ifp);
 LLE_WLOCK(lle);


 if (lle->la_flags & LLE_LINKED) {
  LLE_REMREF(lle);
  lltable_unlink_entry(lle->lle_tbl, lle);
 }
 IF_AFDATA_UNLOCK(ifp);

 size_t pkts_dropped = llentry_free(lle);

 ARPSTAT_ADD(dropped, pkts_dropped);
 ARPSTAT_INC(timeouts);

 CURVNET_RESTORE();
}
