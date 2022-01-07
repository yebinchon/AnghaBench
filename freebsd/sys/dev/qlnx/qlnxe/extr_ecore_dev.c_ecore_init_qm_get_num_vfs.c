
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__* p_iov_info; } ;
struct TYPE_3__ {int total_vfs; } ;


 scalar_t__ IS_ECORE_SRIOV (TYPE_2__*) ;

u16 ecore_init_qm_get_num_vfs(struct ecore_hwfn *p_hwfn)
{
 return IS_ECORE_SRIOV(p_hwfn->p_dev) ? p_hwfn->p_dev->p_iov_info->total_vfs : 0;
}
