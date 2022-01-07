
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_5__ {TYPE_1__* hw_sbs; } ;
struct TYPE_6__ {TYPE_2__ resc; } ;
struct ecore_vf_iov {TYPE_3__ acquire_resp; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;
struct TYPE_4__ {size_t hw_sb_id; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;

u16 ecore_vf_get_igu_sb_id(struct ecore_hwfn *p_hwfn,
      u16 sb_id)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;

 if (!p_iov) {
  DP_NOTICE(p_hwfn, 1, "vf_sriov_info isn't initialized\n");
  return 0;
 }

 return p_iov->acquire_resp.resc.hw_sbs[sb_id].hw_sb_id;
}
