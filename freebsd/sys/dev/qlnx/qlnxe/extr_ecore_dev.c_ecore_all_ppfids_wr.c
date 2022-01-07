
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_1__* p_llh_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;


 int ECORE_SUCCESS ;
 int ecore_abs_ppfid (struct ecore_dev*,scalar_t__,scalar_t__*) ;
 int ecore_ppfid_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ,int ) ;

enum _ecore_status_t ecore_all_ppfids_wr(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt, u32 addr,
      u32 val)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u8 ppfid, abs_ppfid;
 enum _ecore_status_t rc;

 for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
  rc = ecore_abs_ppfid(p_dev, ppfid, &abs_ppfid);
  if (rc != ECORE_SUCCESS)
   return rc;

  ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr, val);
 }

 return ECORE_SUCCESS;
}
