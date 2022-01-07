
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {long ln_ntick; int lle_timer; scalar_t__ la_expire; } ;


 long INT_MAX ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int callout_reset (int *,long,int ,struct llentry*) ;
 int callout_stop (int *) ;
 long hz ;
 int nd6_llinfo_timer ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
nd6_llinfo_settimer_locked(struct llentry *ln, long tick)
{
 int canceled;

 LLE_WLOCK_ASSERT(ln);

 if (tick < 0) {
  ln->la_expire = 0;
  ln->ln_ntick = 0;
  canceled = callout_stop(&ln->lle_timer);
 } else {
  ln->la_expire = time_uptime + tick / hz;
  LLE_ADDREF(ln);
  if (tick > INT_MAX) {
   ln->ln_ntick = tick - INT_MAX;
   canceled = callout_reset(&ln->lle_timer, INT_MAX,
       nd6_llinfo_timer, ln);
  } else {
   ln->ln_ntick = 0;
   canceled = callout_reset(&ln->lle_timer, tick,
       nd6_llinfo_timer, ln);
  }
 }
 if (canceled > 0)
  LLE_REMREF(ln);
}
