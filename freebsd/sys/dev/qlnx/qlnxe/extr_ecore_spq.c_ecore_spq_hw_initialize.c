
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int p_phys_addr; } ;
struct ecore_spq {TYPE_2__ chain; int cid; } ;
struct ecore_hwfn {TYPE_5__* p_consq; int p_dev; } ;
struct ecore_cxt_info {struct e4_core_conn_context* p_cxt; int iid; } ;
struct TYPE_8__ {int consolid_base_addr; int spq_base_hi; int spq_base_lo; } ;
struct TYPE_6__ {int physical_q0; int flags9; int flags1; int flags10; } ;
struct e4_core_conn_context {TYPE_3__ xstorm_st_context; TYPE_1__ xstorm_ag_context; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_9__ {int p_phys_addr; } ;
struct TYPE_10__ {TYPE_4__ chain; } ;


 int DMA_HI_LE (int ) ;
 int DMA_LO_LE (int ) ;
 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ) ;
 int E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN ;
 int E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE ;
 int E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN ;
 int ECORE_E5_MISSING_CODE ;
 scalar_t__ ECORE_IS_AH (int ) ;
 scalar_t__ ECORE_IS_BB (int ) ;
 int OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_MEM_ZERO (struct e4_core_conn_context*,int) ;
 int PQ_FLAGS_LB ;
 int SET_FIELD (int ,int ,int) ;
 int ecore_cxt_get_cid_info (struct ecore_hwfn*,struct ecore_cxt_info*) ;
 int ecore_get_cm_pq_idx (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_spq_hw_initialize(struct ecore_hwfn *p_hwfn,
        struct ecore_spq *p_spq)
{
 struct e4_core_conn_context *p_cxt;
 struct ecore_cxt_info cxt_info;
 u16 physical_q;
 enum _ecore_status_t rc;

 cxt_info.iid = p_spq->cid;

 rc = ecore_cxt_get_cid_info(p_hwfn, &cxt_info);

 if (rc < 0) {
  DP_NOTICE(p_hwfn, 1, "Cannot find context info for cid=%d\n",
     p_spq->cid);
  return;
 }

 p_cxt = cxt_info.p_cxt;


 OSAL_MEM_ZERO(p_cxt, sizeof(*p_cxt));

 if (ECORE_IS_BB(p_hwfn->p_dev) || ECORE_IS_AH(p_hwfn->p_dev)) {
  SET_FIELD(p_cxt->xstorm_ag_context.flags10,
     E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN, 1);
  SET_FIELD(p_cxt->xstorm_ag_context.flags1,
     E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE, 1);


  SET_FIELD(p_cxt->xstorm_ag_context.flags9,
     E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN, 1);
 } else {
  ECORE_E5_MISSING_CODE;
 }




 physical_q = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LB);
 p_cxt->xstorm_ag_context.physical_q0 = OSAL_CPU_TO_LE16(physical_q);

 p_cxt->xstorm_st_context.spq_base_lo =
  DMA_LO_LE(p_spq->chain.p_phys_addr);
 p_cxt->xstorm_st_context.spq_base_hi =
  DMA_HI_LE(p_spq->chain.p_phys_addr);

 DMA_REGPAIR_LE(p_cxt->xstorm_st_context.consolid_base_addr,
         p_hwfn->p_consq->chain.p_phys_addr);
}
