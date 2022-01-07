
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_vf_info {scalar_t__ state; scalar_t__ abs_vf_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_eth_stats {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ VF_ENABLED ;
 int __ecore_get_vport_stats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,scalar_t__,int) ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t ecore_iov_get_vf_stats(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         int vfid,
         struct ecore_eth_stats *p_stats)
{
 struct ecore_vf_info *vf;

 vf = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf)
  return ECORE_INVAL;

 if (vf->state != VF_ENABLED)
  return ECORE_INVAL;

 __ecore_get_vport_stats(p_hwfn, p_ptt, p_stats,
    vf->abs_vf_id + 0x10, 0);

 return ECORE_SUCCESS;
}
