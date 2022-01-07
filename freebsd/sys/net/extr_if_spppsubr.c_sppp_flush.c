
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int dummy; } ;
struct ifnet {int dummy; } ;


 struct sppp* IFP2SP (struct ifnet*) ;
 int SPPP_LOCK (struct sppp*) ;
 int SPPP_UNLOCK (struct sppp*) ;
 int sppp_flush_unlocked (struct ifnet*) ;

void
sppp_flush(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);

 SPPP_LOCK(sp);
 sppp_flush_unlocked (ifp);
 SPPP_UNLOCK(sp);
}
