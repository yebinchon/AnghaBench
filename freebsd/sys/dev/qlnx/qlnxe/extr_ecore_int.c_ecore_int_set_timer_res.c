
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int hw_init_done; } ;
struct cau_sb_entry {int params; } ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ CAU_REG_SB_VAR_MEMORY ;
 int CAU_SB_ENTRY_TIMER_RES0 ;
 int CAU_SB_ENTRY_TIMER_RES1 ;
 int DP_ERR (struct ecore_hwfn*,char*,...) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int OSAL_NULL ;
 int SET_FIELD (int ,int ,int ) ;
 int ecore_dmae_grc2host (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ,int,int ) ;
 int ecore_dmae_host2grc (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,int,int ) ;

enum _ecore_status_t ecore_int_set_timer_res(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u8 timer_res, u16 sb_id, bool tx)
{
 struct cau_sb_entry sb_entry;
 enum _ecore_status_t rc;

 if (!p_hwfn->hw_init_done) {
  DP_ERR(p_hwfn, "hardware not initialized yet\n");
  return ECORE_INVAL;
 }

 rc = ecore_dmae_grc2host(p_hwfn, p_ptt, CAU_REG_SB_VAR_MEMORY +
     sb_id * sizeof(u64),
     (u64)(osal_uintptr_t)&sb_entry, 2,
     OSAL_NULL );
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "dmae_grc2host failed %d\n", rc);
  return rc;
 }

 if (tx)
  SET_FIELD(sb_entry.params, CAU_SB_ENTRY_TIMER_RES1, timer_res);
 else
  SET_FIELD(sb_entry.params, CAU_SB_ENTRY_TIMER_RES0, timer_res);

 rc = ecore_dmae_host2grc(p_hwfn, p_ptt,
     (u64)(osal_uintptr_t)&sb_entry,
     CAU_REG_SB_VAR_MEMORY + sb_id * sizeof(u64), 2,
     OSAL_NULL );
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "dmae_host2grc failed %d\n", rc);
  return rc;
 }

 return rc;
}
