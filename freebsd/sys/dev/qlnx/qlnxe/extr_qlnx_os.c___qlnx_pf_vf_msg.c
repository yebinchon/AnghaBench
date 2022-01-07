
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_6__ {TYPE_1__* sriov_task; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_5__ {int pf_task; int * pf_taskqueue; int flags; } ;


 int ECORE_SUCCESS ;
 int QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG ;
 int QL_DPRINT2 (TYPE_2__*,char*,TYPE_2__*,scalar_t__,struct ecore_hwfn*,int ) ;
 int atomic_testandset_32 (int *,int ) ;
 int qlnx_find_hwfn_index (struct ecore_hwfn*) ;
 int taskqueue_enqueue (int *,int *) ;

__attribute__((used)) static int
__qlnx_pf_vf_msg(struct ecore_hwfn *p_hwfn, uint16_t rel_vf_id)
{
 qlnx_host_t *ha = (qlnx_host_t *)p_hwfn->p_dev;
 int i;

 QL_DPRINT2(ha, "ha = %p cdev = %p p_hwfn = %p rel_vf_id = %d\n",
  ha, p_hwfn->p_dev, p_hwfn, rel_vf_id);

 if ((i = qlnx_find_hwfn_index(p_hwfn)) == -1)
  return (-1);

 if (ha->sriov_task[i].pf_taskqueue != ((void*)0)) {

  atomic_testandset_32(&ha->sriov_task[i].flags,
   QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG);

  taskqueue_enqueue(ha->sriov_task[i].pf_taskqueue,
   &ha->sriov_task[i].pf_task);

 }

 return (ECORE_SUCCESS);
}
