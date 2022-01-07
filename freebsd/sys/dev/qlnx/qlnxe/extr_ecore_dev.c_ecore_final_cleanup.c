
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ CHIP_REV_IS_SLOW (int ) ;
 scalar_t__ CHIP_REV_IS_TEDIBEAR (int ) ;
 int DP_INFO (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int FINAL_CLEANUP_POLL_CNT ;
 int FINAL_CLEANUP_POLL_TIME ;
 int GTT_BAR0_MAP_REG_USDM_RAM ;
 int OSAL_MSLEEP (int ) ;
 scalar_t__ REG_RD (struct ecore_hwfn*,int) ;
 int REG_WR (struct ecore_hwfn*,int,int ) ;
 int SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT ;
 int SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT ;
 int SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT ;
 int SDM_COMP_TYPE_AGG_INT ;
 int SDM_OP_GEN_COMP_TYPE_SHIFT ;
 int USTORM_FLR_FINAL_ACK_OFFSET (int ) ;
 int XSDM_REG_OPERATION_GEN ;
 int X_FINAL_CLEANUP_AGG_INT ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t ecore_final_cleanup(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      u16 id, bool is_vf)
{
 u32 command = 0, addr, count = FINAL_CLEANUP_POLL_CNT;
 enum _ecore_status_t rc = ECORE_TIMEOUT;


 if (CHIP_REV_IS_TEDIBEAR(p_hwfn->p_dev) ||
     CHIP_REV_IS_SLOW(p_hwfn->p_dev)) {
  DP_INFO(p_hwfn, "Skipping final cleanup for non-ASIC\n");
  return ECORE_SUCCESS;
 }


 addr = GTT_BAR0_MAP_REG_USDM_RAM +
        USTORM_FLR_FINAL_ACK_OFFSET(p_hwfn->rel_pf_id);

 if (is_vf)
  id += 0x10;

 command |= X_FINAL_CLEANUP_AGG_INT <<
     SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT;
 command |= 1 << SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT;
 command |= id << SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT;
 command |= SDM_COMP_TYPE_AGG_INT << SDM_OP_GEN_COMP_TYPE_SHIFT;


 if (REG_RD(p_hwfn, addr)) {
  DP_NOTICE(p_hwfn, 0,
     "Unexpected; Found final cleanup notification before initiating final cleanup\n");
  REG_WR(p_hwfn, addr, 0);
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "Sending final cleanup for PFVF[%d] [Command %08x]\n",
     id, command);

 ecore_wr(p_hwfn, p_ptt, XSDM_REG_OPERATION_GEN, command);


 while (!REG_RD(p_hwfn, addr) && count--)
  OSAL_MSLEEP(FINAL_CLEANUP_POLL_TIME);

 if (REG_RD(p_hwfn, addr))
  rc = ECORE_SUCCESS;
 else
  DP_NOTICE(p_hwfn, 1, "Failed to receive FW final cleanup notification\n");


 REG_WR(p_hwfn, addr, 0);

 return rc;
}
