
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ifq_mtx; } ;
struct TYPE_3__ {int ifq_mtx; } ;
struct sppp {int mtx; TYPE_2__ pp_fastq; TYPE_1__ pp_cpq; int pap_my_to_ch; int * ch; int keepalive_callout; } ;
struct ifnet {int dummy; } ;


 int IDX_COUNT ;
 struct sppp* IFP2SP (struct ifnet*) ;
 int KASSERT (int ,char*) ;
 int callout_drain (int *) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;

void
sppp_detach(struct ifnet *ifp)
{
 struct sppp *sp = IFP2SP(ifp);
 int i;

 KASSERT(mtx_initialized(&sp->mtx), ("sppp mutex is not initialized"));


  callout_drain(&sp->keepalive_callout);

 for (i = 0; i < IDX_COUNT; i++) {
  callout_drain(&sp->ch[i]);
 }
 callout_drain(&sp->pap_my_to_ch);

 mtx_destroy(&sp->pp_cpq.ifq_mtx);
 mtx_destroy(&sp->pp_fastq.ifq_mtx);
 mtx_destroy(&sp->mtx);
}
