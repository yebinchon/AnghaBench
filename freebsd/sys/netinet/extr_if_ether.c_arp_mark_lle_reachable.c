
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int la_flags; int la_preempt; scalar_t__ la_asked; int lle_timer; scalar_t__ la_expire; int ln_state; } ;


 int ARP_LLINFO_REACHABLE ;
 int EVENTHANDLER_INVOKE (int ,struct llentry*,int ) ;
 int LLENTRY_RESOLVED ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_STATIC ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int V_arp_maxtries ;
 int V_arpt_keep ;
 int V_arpt_rexmit ;
 int arptimer ;
 int callout_reset (int *,int,int ,struct llentry*) ;
 int hz ;
 int lle_event ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
arp_mark_lle_reachable(struct llentry *la)
{
 int canceled, wtime;

 LLE_WLOCK_ASSERT(la);

 la->ln_state = ARP_LLINFO_REACHABLE;
 EVENTHANDLER_INVOKE(lle_event, la, LLENTRY_RESOLVED);

 if (!(la->la_flags & LLE_STATIC)) {
  LLE_ADDREF(la);
  la->la_expire = time_uptime + V_arpt_keep;
  wtime = V_arpt_keep - V_arp_maxtries * V_arpt_rexmit;
  if (wtime < 0)
   wtime = V_arpt_keep;
  canceled = callout_reset(&la->lle_timer,
      hz * wtime, arptimer, la);
  if (canceled)
   LLE_REMREF(la);
 }
 la->la_asked = 0;
 la->la_preempt = V_arp_maxtries;
}
