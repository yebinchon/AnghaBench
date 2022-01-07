
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_wfq_data {int min_speed; scalar_t__ configured; } ;
struct ecore_vf_info {size_t vport_id; } ;
struct TYPE_2__ {struct ecore_wfq_data* wfq_data; } ;
struct ecore_hwfn {TYPE_1__ qm_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t
ecore_iov_get_vf_min_rate(struct ecore_hwfn *p_hwfn, int vfid)
{
 struct ecore_wfq_data *vf_vp_wfq;
 struct ecore_vf_info *vf_info;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info)
  return 0;

 vf_vp_wfq = &p_hwfn->qm_info.wfq_data[vf_info->vport_id];

 if (vf_vp_wfq->configured)
  return vf_vp_wfq->min_speed;
 else
  return 0;
}
