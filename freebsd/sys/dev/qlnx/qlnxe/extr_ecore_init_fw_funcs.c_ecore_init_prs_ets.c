
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct init_ets_tc_req {scalar_t__ weight; int use_wfq; scalar_t__ use_sp; } ;
struct init_ets_req {int mtu; struct init_ets_tc_req* tc_req; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 size_t NUM_OF_TCS ;
 scalar_t__ PRS_ETS_MIN_WFQ_BYTES ;
 scalar_t__ PRS_ETS_UP_BOUND (scalar_t__,int ) ;
 scalar_t__ PRS_REG_ETS_ARB_CLIENT_IS_STRICT ;
 scalar_t__ PRS_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ ;
 scalar_t__ PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0 ;
 scalar_t__ PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_1 ;
 scalar_t__ PRS_REG_ETS_ARB_CREDIT_WEIGHT_0 ;
 scalar_t__ PRS_REG_ETS_ARB_CREDIT_WEIGHT_1 ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__) ;

void ecore_init_prs_ets(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct init_ets_req* req)
{
 u32 tc_weight_addr_diff, tc_bound_addr_diff, min_weight = 0xffffffff;
 u8 tc, sp_tc_map = 0, wfq_tc_map = 0;

 tc_weight_addr_diff = PRS_REG_ETS_ARB_CREDIT_WEIGHT_1 - PRS_REG_ETS_ARB_CREDIT_WEIGHT_0;
 tc_bound_addr_diff = PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_1 - PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0;

 for (tc = 0; tc < NUM_OF_TCS; tc++) {
  struct init_ets_tc_req *tc_req = &req->tc_req[tc];


  if (tc_req->use_sp)
   sp_tc_map |= (1 << tc);

  if (!tc_req->use_wfq)
   continue;


  wfq_tc_map |= (1 << tc);


  if (tc_req->weight < min_weight)
   min_weight = tc_req->weight;
 }


 ecore_wr(p_hwfn, p_ptt, PRS_REG_ETS_ARB_CLIENT_IS_STRICT, sp_tc_map);


 ecore_wr(p_hwfn, p_ptt, PRS_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ, wfq_tc_map);


 for (tc = 0; tc < NUM_OF_TCS; tc++) {
  struct init_ets_tc_req *tc_req = &req->tc_req[tc];
  u32 byte_weight;

  if (!tc_req->use_wfq)
   continue;


  byte_weight = (PRS_ETS_MIN_WFQ_BYTES * tc_req->weight) / min_weight;


  ecore_wr(p_hwfn, p_ptt, PRS_REG_ETS_ARB_CREDIT_WEIGHT_0 + tc * tc_weight_addr_diff, byte_weight);


  ecore_wr(p_hwfn, p_ptt, PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0 + tc * tc_bound_addr_diff, PRS_ETS_UP_BOUND(byte_weight, req->mtu));
 }
}
