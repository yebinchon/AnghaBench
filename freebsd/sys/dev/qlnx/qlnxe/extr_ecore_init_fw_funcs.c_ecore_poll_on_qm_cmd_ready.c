
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_MSG_DEBUG ;
 int OSAL_UDELAY (int ) ;
 int QM_REG_SDMCMDREADY ;
 scalar_t__ QM_STOP_CMD_MAX_POLL_COUNT ;
 int QM_STOP_CMD_POLL_PERIOD_US ;
 scalar_t__ ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static bool ecore_poll_on_qm_cmd_ready(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt)
{
 u32 reg_val, i;

 for (i = 0, reg_val = 0; i < QM_STOP_CMD_MAX_POLL_COUNT && !reg_val; i++) {
  OSAL_UDELAY(QM_STOP_CMD_POLL_PERIOD_US);
  reg_val = ecore_rd(p_hwfn, p_ptt, QM_REG_SDMCMDREADY);
 }


 if (i == QM_STOP_CMD_MAX_POLL_COUNT) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "Timeout when waiting for QM SDM command ready signal\n");
  return 0;
 }

 return 1;
}
