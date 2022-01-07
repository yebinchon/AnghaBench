
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {scalar_t__ recov_in_prog; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_AGAIN ;
 int ECORE_SUCCESS ;
 int MISC_REG_AEU_GENERAL_ATTN_35 ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t ecore_start_recovery_process(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;

 if (p_dev->recov_in_prog) {
  DP_NOTICE(p_hwfn, 0,
     "Avoid triggering a recovery since such a process is already in progress\n");
  return ECORE_AGAIN;
 }

 DP_NOTICE(p_hwfn, 0, "Triggering a recovery process\n");
 ecore_wr(p_hwfn, p_ptt, MISC_REG_AEU_GENERAL_ATTN_35, 0x1);

 return ECORE_SUCCESS;
}
