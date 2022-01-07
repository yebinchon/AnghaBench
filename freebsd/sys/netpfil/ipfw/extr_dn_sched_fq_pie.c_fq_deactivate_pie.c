
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pie_status {int sflags; int lock_mtx; int aqm_pie_callout; } ;


 int PIE_ACTIVE ;
 int PIE_INMEASUREMENT ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) __inline static void
fq_deactivate_pie(struct pie_status *pst)
{
 mtx_lock(&pst->lock_mtx);
 pst->sflags &= ~(PIE_ACTIVE | PIE_INMEASUREMENT);
 callout_stop(&pst->aqm_pie_callout);

 mtx_unlock(&pst->lock_mtx);
}
