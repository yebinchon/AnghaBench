
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DB_REC_REAL_DEAL ;
 int DORQ_REG_DPM_FORCE_ABORT ;
 int DORQ_REG_PF_OVFL_STICKY ;
 int DORQ_REG_PF_USAGE_CNT ;
 int DP_NOTICE (int ,int,char*,int,int) ;
 int ECORE_DB_REC_COUNT ;
 int ECORE_DB_REC_INTERVAL ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int OSAL_UDELAY (int) ;
 int ecore_db_recovery_execute (struct ecore_hwfn*,int ) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_db_rec_attn(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt)
{
 u8 count = ECORE_DB_REC_COUNT;
 u32 usage = 1;
 while (count-- && usage) {
  usage = ecore_rd(p_hwfn, p_ptt, DORQ_REG_PF_USAGE_CNT);
  OSAL_UDELAY(ECORE_DB_REC_INTERVAL);
 }


 if (usage) {
  DP_NOTICE(p_hwfn->p_dev, 0,
     "DB recovery: doorbell usage failed to zero after %d usec. usage was %x\n",
     ECORE_DB_REC_INTERVAL * ECORE_DB_REC_COUNT, usage);
  return ECORE_TIMEOUT;
 }


 ecore_wr(p_hwfn, p_ptt, DORQ_REG_DPM_FORCE_ABORT, 0x1);


 ecore_wr(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY, 0x0);


 ecore_db_recovery_execute(p_hwfn, DB_REC_REAL_DEAL);

 return ECORE_SUCCESS;
}
