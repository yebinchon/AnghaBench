
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pie_status {int lock_mtx; } ;
struct fq_pie_si_extra {struct fq_pie_si_extra* flows; int nr_active_q; } ;
struct fq_pie_flow {struct fq_pie_si_extra* psi_extra; struct pie_status pst; } ;
struct TYPE_2__ {int ref_count; } ;


 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int M_DUMMYNET ;
 TYPE_1__ fq_pie_desc ;
 int free (struct fq_pie_si_extra*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
fqpie_callout_cleanup(void *x)
{
 struct fq_pie_flow *q = x;
 struct pie_status *pst = &q->pst;
 struct fq_pie_si_extra *psi_extra;

 mtx_unlock(&pst->lock_mtx);
 mtx_destroy(&pst->lock_mtx);
 psi_extra = q->psi_extra;

 DN_BH_WLOCK();
 psi_extra->nr_active_q--;


 if (!psi_extra->nr_active_q) {
  free(psi_extra->flows, M_DUMMYNET);
  free(psi_extra, M_DUMMYNET);
  fq_pie_desc.ref_count--;
 }
 DN_BH_WUNLOCK();
}
