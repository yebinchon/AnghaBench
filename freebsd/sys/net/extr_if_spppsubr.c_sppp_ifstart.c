
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int (* if_start ) (struct ifnet*) ;int ifstart_callout; } ;
struct ifnet {int dummy; } ;


 struct sppp* IFP2SP (struct ifnet*) ;
 scalar_t__ SPPP_LOCK_OWNED (struct sppp*) ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int,int ,void*) ;
 int sppp_ifstart_sched ;
 int stub1 (struct ifnet*) ;

__attribute__((used)) static void
sppp_ifstart(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);

 if (SPPP_LOCK_OWNED(sp)) {
  if (callout_pending(&sp->ifstart_callout))
   return;
  callout_reset(&sp->ifstart_callout, 1, sppp_ifstart_sched,
      (void *)sp);
 } else {
  sp->if_start(ifp);
 }
}
