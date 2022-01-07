
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* vf_iov_info; } ;
struct TYPE_2__ {int b_pre_fp_hsi; } ;



bool ecore_vf_get_pre_fp_hsi(struct ecore_hwfn *p_hwfn)
{
 return p_hwfn->vf_iov_info->b_pre_fp_hsi;
}
