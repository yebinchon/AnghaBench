
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ifq_head; } ;
struct TYPE_5__ {int ifq_head; } ;
struct sppp {TYPE_2__ pp_cpq; TYPE_1__ pp_fastq; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {int ifq_head; } ;
struct TYPE_8__ {TYPE_3__ if_snd; } ;


 struct sppp* IFP2SP (struct ifnet*) ;
 TYPE_4__* SP2IFP (struct sppp*) ;
 int SPPP_LOCK (struct sppp*) ;
 int SPPP_UNLOCK (struct sppp*) ;

int
sppp_isempty(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);
 int empty;

 SPPP_LOCK(sp);
 empty = !sp->pp_fastq.ifq_head && !sp->pp_cpq.ifq_head &&
  !SP2IFP(sp)->if_snd.ifq_head;
 SPPP_UNLOCK(sp);
 return (empty);
}
