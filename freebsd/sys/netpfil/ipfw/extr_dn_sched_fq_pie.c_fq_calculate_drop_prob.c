
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pie_status {int drop_prob; int current_qdelay; int avg_dq_time; int qdelay_old; int sflags; scalar_t__ burst_allowance; int lock_mtx; int aqm_pie_callout; struct dn_aqm_pie_parms* parms; } ;
struct TYPE_2__ {scalar_t__ len_bytes; } ;
struct fq_pie_flow {TYPE_1__ stats; struct pie_status pst; } ;
struct dn_aqm_pie_parms {int flags; scalar_t__ tupdate; scalar_t__ beta; scalar_t__ qdelay_ref; scalar_t__ alpha; } ;
typedef int int64_t ;
typedef int aqm_time_t ;


 int AQM_TIME_1S ;
 int AQM_UNOW ;
 int D (char*) ;
 int PIE_ACTIVE ;
 int PIE_CAPDROP_ENABLED ;
 int PIE_DEPRATEEST_ENABLED ;
 int PIE_DQ_THRESHOLD_BITS ;
 int PIE_FIX_POINT_BITS ;
 int PIE_MAX_PROB ;
 int SBT_1US ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),struct fq_pie_flow*,int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
fq_calculate_drop_prob(void *x)
{
 struct fq_pie_flow *q = (struct fq_pie_flow *) x;
 struct pie_status *pst = &q->pst;
 struct dn_aqm_pie_parms *pprms;
 int64_t p, prob, oldprob;
 aqm_time_t now;
 int p_isneg;

 now = AQM_UNOW;
 pprms = pst->parms;
 prob = pst->drop_prob;





 if (pprms->flags & PIE_DEPRATEEST_ENABLED)
  pst->current_qdelay = ((uint64_t)q->stats.len_bytes * pst->avg_dq_time)
   >> PIE_DQ_THRESHOLD_BITS;
 else
  if (!q->stats.len_bytes)
   pst->current_qdelay = 0;


 p = (int64_t)pprms->alpha *
  ((int64_t)pst->current_qdelay - (int64_t)pprms->qdelay_ref);
 p +=(int64_t) pprms->beta *
  ((int64_t)pst->current_qdelay - (int64_t)pst->qdelay_old);


 p_isneg = p < 0;
 if (p_isneg) {
  p = -p;
 }


 p *= (PIE_MAX_PROB << 12) / AQM_TIME_1S;


 if (prob < (PIE_MAX_PROB / 1000000))
  p >>= 11 + PIE_FIX_POINT_BITS + 12;
 else if (prob < (PIE_MAX_PROB / 100000))
  p >>= 9 + PIE_FIX_POINT_BITS + 12;
 else if (prob < (PIE_MAX_PROB / 10000))
  p >>= 7 + PIE_FIX_POINT_BITS + 12;
 else if (prob < (PIE_MAX_PROB / 1000))
  p >>= 5 + PIE_FIX_POINT_BITS + 12;
 else if (prob < (PIE_MAX_PROB / 100))
  p >>= 3 + PIE_FIX_POINT_BITS + 12;
 else if (prob < (PIE_MAX_PROB / 10))
  p >>= 1 + PIE_FIX_POINT_BITS + 12;
 else
  p >>= PIE_FIX_POINT_BITS + 12;

 oldprob = prob;

 if (p_isneg) {
  prob = prob - p;


  if (prob > oldprob) {
   prob= 0;
   D("underflow");
  }
 } else {

  if ((pprms->flags & PIE_CAPDROP_ENABLED) &&
      prob >= PIE_MAX_PROB / 10 &&
      p > PIE_MAX_PROB / 50 ) {
   p = PIE_MAX_PROB / 50;
  }

  prob = prob + p;


  if (prob<oldprob) {
   D("overflow");
   prob= PIE_MAX_PROB;
  }
 }





 if (prob < 0) {
  prob = 0;
 } else {
  if (pst->current_qdelay == 0 && pst->qdelay_old == 0) {

   prob = prob - (prob >> 6);
  }

  if (prob > PIE_MAX_PROB) {
   prob = PIE_MAX_PROB;
  }
 }

 pst->drop_prob = prob;


 pst->qdelay_old = pst->current_qdelay;


 if ((pst->sflags & PIE_ACTIVE) && pst->burst_allowance) {
  if (pst->burst_allowance > pprms->tupdate)
   pst->burst_allowance -= pprms->tupdate;
  else
   pst->burst_allowance = 0;
 }

 if (pst->sflags & PIE_ACTIVE)
 callout_reset_sbt(&pst->aqm_pie_callout,
  (uint64_t)pprms->tupdate * SBT_1US,
  0, fq_calculate_drop_prob, q, 0);

 mtx_unlock(&pst->lock_mtx);
}
