
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_7__ {TYPE_1__* sriov_task; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_6__ {int flags; } ;


 int QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE ;
 int QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE ;
 int QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG ;
 scalar_t__ atomic_testandclear_32 (int *,int ) ;
 int qlnx_find_hwfn_index (struct ecore_hwfn*) ;
 int qlnx_handle_bulletin_update (TYPE_2__*,struct ecore_hwfn*) ;
 int qlnx_handle_vf_flr_update (TYPE_2__*,struct ecore_hwfn*) ;
 int qlnx_handle_vf_msg (TYPE_2__*,struct ecore_hwfn*) ;

__attribute__((used)) static void
qlnx_pf_taskqueue(void *context, int pending)
{
 struct ecore_hwfn *p_hwfn;
 qlnx_host_t *ha;
 int i;

 p_hwfn = context;

 if (p_hwfn == ((void*)0))
  return;

 ha = (qlnx_host_t *)(p_hwfn->p_dev);

 if ((i = qlnx_find_hwfn_index(p_hwfn)) == -1)
  return;

 if (atomic_testandclear_32(&ha->sriov_task[i].flags,
  QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG))
  qlnx_handle_vf_msg(ha, p_hwfn);

 if (atomic_testandclear_32(&ha->sriov_task[i].flags,
  QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE))
  qlnx_handle_vf_flr_update(ha, p_hwfn);

 if (atomic_testandclear_32(&ha->sriov_task[i].flags,
  QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE))
  qlnx_handle_bulletin_update(ha, p_hwfn);

 return;
}
