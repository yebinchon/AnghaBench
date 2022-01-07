
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifqueue {int dummy; } ;
struct sppp {struct ifqueue pp_cpq; struct ifqueue pp_fastq; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int if_snd; } ;


 struct sppp* IFP2SP (struct ifnet*) ;
 TYPE_1__* SP2IFP (struct sppp*) ;
 int sppp_qflush (struct ifqueue*) ;

__attribute__((used)) static void
sppp_flush_unlocked(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);

 sppp_qflush ((struct ifqueue *)&SP2IFP(sp)->if_snd);
 sppp_qflush (&sp->pp_fastq);
 sppp_qflush (&sp->pp_cpq);
}
