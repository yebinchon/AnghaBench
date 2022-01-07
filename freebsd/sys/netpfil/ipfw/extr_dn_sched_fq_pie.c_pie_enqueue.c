
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct pie_status {int sflags; scalar_t__ burst_allowance; int drop_prob; scalar_t__ one_third_q_size; int current_qdelay; int qdelay_old; scalar_t__ accu_prob; struct dn_aqm_pie_parms* parms; } ;
struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
struct fq_pie_si {int dummy; } ;
struct TYPE_4__ {scalar_t__ len_bytes; } ;
struct fq_pie_flow {int mq; TYPE_2__ stats; struct pie_status pst; } ;
struct dn_aqm_pie_parms {int flags; int max_ecnth; int qdelay_ref; scalar_t__ max_burst; } ;
typedef int aqm_time_t ;


 int AQM_UNOW ;
 int DN_AQM_MTAG_TS ;
 int DROP ;
 int ENQUE ;
 int FREE_PKT (struct mbuf*) ;
 int MTAG_ABI_COMPAT ;
 int M_NOWAIT ;
 int PIE_ACTIVE ;
 int PIE_DEPRATEEST_ENABLED ;
 int PIE_ECN_ENABLED ;
 int PIE_FIX_POINT_BITS ;
 int PIE_ON_OFF_MODE_ENABLED ;
 int PIE_PROB_BITS ;
 int drop_early (struct pie_status*,scalar_t__) ;
 scalar_t__ ecn_mark (struct mbuf*) ;
 int fq_activate_pie (struct fq_pie_flow*) ;
 int fq_deactivate_pie (struct pie_status*) ;
 int fq_update_stats (struct fq_pie_flow*,struct fq_pie_si*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int mq_append (int *,struct mbuf*) ;

__attribute__((used)) static int
pie_enqueue(struct fq_pie_flow *q, struct mbuf* m, struct fq_pie_si *si)
{
 uint64_t len;
 struct pie_status *pst;
 struct dn_aqm_pie_parms *pprms;
 int t;

 len = m->m_pkthdr.len;
 pst = &q->pst;
 pprms = pst->parms;
 t = ENQUE;


 if (pst->sflags & PIE_ACTIVE && pst->burst_allowance == 0
  && drop_early(pst, q->stats.len_bytes) == DROP) {




   if (pprms->flags & PIE_ECN_ENABLED && pst->drop_prob <
    (pprms->max_ecnth << (PIE_PROB_BITS - PIE_FIX_POINT_BITS))
    && ecn_mark(m))
    t = ENQUE;
   else
    t = DROP;
  }


 if (!(pst->sflags & PIE_ACTIVE) && q->stats.len_bytes >=
  pst->one_third_q_size) {
  fq_activate_pie(q);
 }


 if (pst->drop_prob == 0 && pst->current_qdelay < (pprms->qdelay_ref >> 1)
  && pst->qdelay_old < (pprms->qdelay_ref >> 1)) {

   pst->burst_allowance = pprms->max_burst;
  if (pprms->flags & PIE_ON_OFF_MODE_ENABLED && q->stats.len_bytes<=0)
   fq_deactivate_pie(pst);
 }


 if (t != DROP && !(pprms->flags & PIE_DEPRATEEST_ENABLED)) {

  struct m_tag *mtag;
  mtag = m_tag_locate(m, MTAG_ABI_COMPAT, DN_AQM_MTAG_TS, ((void*)0));
  if (mtag == ((void*)0))
   mtag = m_tag_alloc(MTAG_ABI_COMPAT, DN_AQM_MTAG_TS,
    sizeof(aqm_time_t), M_NOWAIT);
  if (mtag == ((void*)0)) {
   m_freem(m);
   t = DROP;
  }
  *(aqm_time_t *)(mtag + 1) = AQM_UNOW;
  m_tag_prepend(m, mtag);
 }

 if (t != DROP) {
  mq_append(&q->mq, m);
  fq_update_stats(q, si, len, 0);
  return 0;
 } else {
  fq_update_stats(q, si, len, 1);
  pst->accu_prob = 0;
  FREE_PKT(m);
  return 1;
 }

 return 0;
}
