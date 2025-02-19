
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int queue_id; } ;
struct ecore_queue_cid {int sb_igu_id; TYPE_1__ abs; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct cau_sb_entry {int params; } ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int BAR0_MAP_REG_XSDM_RAM ;
 scalar_t__ CAU_REG_SB_VAR_MEMORY ;
 int CAU_SB_ENTRY_TIMER_RES1 ;
 int COALESCING_TIMESET_TIMESET ;
 int COALESCING_TIMESET_VALID ;
 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int GET_FIELD (int,int ) ;
 int OSAL_NULL ;
 int XSTORM_ETH_QUEUE_ZONE_OFFSET (int ) ;
 int ecore_dmae_grc2host (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ,int,int ) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int) ;

int ecore_get_txq_coalesce(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct ecore_queue_cid *p_cid,
      u16 *p_tx_coal)
{
 u32 coalesce, address, is_valid;
 struct cau_sb_entry sb_entry;
 u8 timer_res;
 enum _ecore_status_t rc;

 rc = ecore_dmae_grc2host(p_hwfn, p_ptt, CAU_REG_SB_VAR_MEMORY +
     p_cid->sb_igu_id * sizeof(u64),
     (u64)(osal_uintptr_t)&sb_entry, 2,
     OSAL_NULL );
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "dmae_grc2host failed %d\n", rc);
  return rc;
 }

 timer_res = GET_FIELD(sb_entry.params, CAU_SB_ENTRY_TIMER_RES1);

 address = BAR0_MAP_REG_XSDM_RAM +
    XSTORM_ETH_QUEUE_ZONE_OFFSET(p_cid->abs.queue_id);
 coalesce = ecore_rd(p_hwfn, p_ptt, address);

 is_valid = GET_FIELD(coalesce, COALESCING_TIMESET_VALID);
 if (!is_valid)
  return ECORE_INVAL;

 coalesce = GET_FIELD(coalesce, COALESCING_TIMESET_TIMESET);
 *p_tx_coal = (u16)(coalesce << timer_res);

 return ECORE_SUCCESS;
}
