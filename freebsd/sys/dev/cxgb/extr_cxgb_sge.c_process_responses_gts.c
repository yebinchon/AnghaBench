
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int next_holdoff; int cidx; int cntxt_id; } ;
typedef int adapter_t ;


 int A_SG_GTS ;
 int V_NEWINDEX (int ) ;
 int V_NEWTIMER (int) ;
 int V_RSPQ (int ) ;
 scalar_t__ cxgb_debug ;
 int printf (char*,int) ;
 int process_responses (int *,int ,int) ;
 int rspq_to_qset (struct sge_rspq*) ;
 int t3_write_reg (int *,int ,int) ;

__attribute__((used)) static __inline int
process_responses_gts(adapter_t *adap, struct sge_rspq *rq)
{
 int work;
 static int last_holdoff = 0;

 work = process_responses(adap, rspq_to_qset(rq), -1);

 if (cxgb_debug && (rq->next_holdoff != last_holdoff)) {
  printf("next_holdoff=%d\n", rq->next_holdoff);
  last_holdoff = rq->next_holdoff;
 }
 t3_write_reg(adap, A_SG_GTS, V_RSPQ(rq->cntxt_id) |
     V_NEWTIMER(rq->next_holdoff) | V_NEWINDEX(rq->cidx));

 return (work);
}
