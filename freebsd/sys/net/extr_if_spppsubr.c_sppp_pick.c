
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct mbuf* ifq_head; } ;
struct TYPE_7__ {struct mbuf* ifq_head; } ;
struct sppp {scalar_t__ pp_phase; scalar_t__ pp_mode; TYPE_1__ pp_fastq; TYPE_3__ pp_cpq; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {struct mbuf* ifq_head; } ;
struct TYPE_8__ {TYPE_2__ if_snd; } ;


 scalar_t__ IFF_CISCO ;
 struct sppp* IFP2SP (struct ifnet*) ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ PP_FR ;
 TYPE_4__* SP2IFP (struct sppp*) ;
 int SPPP_LOCK (struct sppp*) ;
 int SPPP_UNLOCK (struct sppp*) ;

struct mbuf *
sppp_pick(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);
 struct mbuf *m;

 SPPP_LOCK(sp);

 m = sp->pp_cpq.ifq_head;
 if (m == ((void*)0) &&
     (sp->pp_phase == PHASE_NETWORK ||
      sp->pp_mode == IFF_CISCO ||
      sp->pp_mode == PP_FR))
  if ((m = sp->pp_fastq.ifq_head) == ((void*)0))
   m = SP2IFP(sp)->if_snd.ifq_head;
 SPPP_UNLOCK(sp);
 return (m);
}
