
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sppp {scalar_t__ pp_mode; int pp_fastq; int pp_cpq; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int if_snd; } ;


 scalar_t__ IFF_CISCO ;
 struct sppp* IFP2SP (struct ifnet*) ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 scalar_t__ PP_FR ;
 TYPE_1__* SP2IFP (struct sppp*) ;
 int SPPP_LOCK (struct sppp*) ;
 int SPPP_UNLOCK (struct sppp*) ;
 scalar_t__ sppp_ncp_check (struct sppp*) ;

struct mbuf *
sppp_dequeue(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);
 struct mbuf *m;

 SPPP_LOCK(sp);






 IF_DEQUEUE(&sp->pp_cpq, m);
 if (m == ((void*)0) &&
     (sppp_ncp_check(sp) || sp->pp_mode == IFF_CISCO ||
      sp->pp_mode == PP_FR)) {
  IF_DEQUEUE(&sp->pp_fastq, m);
  if (m == ((void*)0))
   IF_DEQUEUE (&SP2IFP(sp)->if_snd, m);
 }
 SPPP_UNLOCK(sp);
 return m;
}
