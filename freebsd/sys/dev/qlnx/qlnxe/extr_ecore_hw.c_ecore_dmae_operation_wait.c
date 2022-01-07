
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__* p_completion_word; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ CHIP_REV_IS_EMUL (int ) ;
 scalar_t__ CHIP_REV_IS_FPGA (int ) ;
 scalar_t__ DMAE_COMPLETION_VAL ;
 int DMAE_MIN_WAIT_TIME ;
 int DP_NOTICE (int ,int ,char*,scalar_t__,scalar_t__) ;
 int ECORE_EMUL_FACTOR ;
 int ECORE_FPGA_FACTOR ;
 int ECORE_MSG_HW ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int OSAL_BARRIER (int ) ;
 int OSAL_UDELAY (int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_dmae_operation_wait(struct ecore_hwfn *p_hwfn)
{
 u32 wait_cnt_limit = 10000, wait_cnt = 0;
 enum _ecore_status_t ecore_status = ECORE_SUCCESS;


 u32 factor = (CHIP_REV_IS_EMUL(p_hwfn->p_dev) ?
        ECORE_EMUL_FACTOR :
        (CHIP_REV_IS_FPGA(p_hwfn->p_dev) ?
         ECORE_FPGA_FACTOR : 1));

 wait_cnt_limit *= factor;






 OSAL_BARRIER(p_hwfn->p_dev);
 while (*p_hwfn->dmae_info.p_completion_word != DMAE_COMPLETION_VAL) {
  OSAL_UDELAY(DMAE_MIN_WAIT_TIME);
  if (++wait_cnt > wait_cnt_limit) {
   DP_NOTICE(p_hwfn->p_dev, ECORE_MSG_HW,
      "Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\n",
      *(p_hwfn->dmae_info.p_completion_word),
      DMAE_COMPLETION_VAL);
   ecore_status = ECORE_TIMEOUT;
   break;
  }




  OSAL_BARRIER(p_hwfn->p_dev);
 }

 if (ecore_status == ECORE_SUCCESS)
  *p_hwfn->dmae_info.p_completion_word = 0;

 return ecore_status;
}
