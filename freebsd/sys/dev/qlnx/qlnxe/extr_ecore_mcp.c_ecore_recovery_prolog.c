
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_ptt* p_main_ptt; } ;
struct ecore_dev {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 int ECORE_RECOVERY_PROLOG_SLEEP_MS ;
 int ECORE_SUCCESS ;
 int OSAL_MSLEEP (int ) ;
 int ecore_pglueb_set_pfid_enable (struct ecore_hwfn*,struct ecore_ptt*,int) ;

enum _ecore_status_t ecore_recovery_prolog(struct ecore_dev *p_dev)
{
 struct ecore_hwfn *p_hwfn = ECORE_LEADING_HWFN(p_dev);
 struct ecore_ptt *p_ptt = p_hwfn->p_main_ptt;
 enum _ecore_status_t rc;


 OSAL_MSLEEP(ECORE_RECOVERY_PROLOG_SLEEP_MS);


 rc = ecore_pglueb_set_pfid_enable(p_hwfn, p_ptt, 0);
 if (rc != ECORE_SUCCESS)
  DP_NOTICE(p_hwfn, 0,
     "ecore_pglueb_set_pfid_enable() failed. rc = %d.\n",
     rc);

 return rc;
}
