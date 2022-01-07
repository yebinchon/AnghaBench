
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pie_status {int sflags; int lock_mtx; int aqm_pie_callout; int measurement_start; scalar_t__ avg_dq_time; scalar_t__ dq_count; scalar_t__ accu_prob; int burst_allowance; scalar_t__ qdelay_old; scalar_t__ drop_prob; struct dn_aqm_pie_parms* parms; } ;
struct fq_pie_flow {struct pie_status pst; } ;
struct dn_aqm_pie_parms {scalar_t__ tupdate; int max_burst; } ;


 int AQM_UNOW ;
 int PIE_ACTIVE ;
 int PIE_INMEASUREMENT ;
 int SBT_1US ;
 int callout_reset_sbt (int *,int,int ,int ,struct fq_pie_flow*,int ) ;
 int fq_calculate_drop_prob ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) __inline static void
fq_activate_pie(struct fq_pie_flow *q)
{
 struct pie_status *pst = &q->pst;
 struct dn_aqm_pie_parms *pprms;

 mtx_lock(&pst->lock_mtx);
 pprms = pst->parms;

 pprms = pst->parms;
 pst->drop_prob = 0;
 pst->qdelay_old = 0;
 pst->burst_allowance = pprms->max_burst;
 pst->accu_prob = 0;
 pst->dq_count = 0;
 pst->avg_dq_time = 0;
 pst->sflags = PIE_INMEASUREMENT | PIE_ACTIVE;
 pst->measurement_start = AQM_UNOW;

 callout_reset_sbt(&pst->aqm_pie_callout,
  (uint64_t)pprms->tupdate * SBT_1US,
  0, fq_calculate_drop_prob, q, 0);

 mtx_unlock(&pst->lock_mtx);
}
