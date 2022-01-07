
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_6__ {TYPE_1__* sriov_task; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_5__ {int pf_task; int * pf_taskqueue; int flags; } ;


 int QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE ;
 int QL_DPRINT2 (TYPE_2__*,char*,TYPE_2__*,scalar_t__,struct ecore_hwfn*,...) ;
 int atomic_testandset_32 (int *,int ) ;
 int qlnx_find_hwfn_index (struct ecore_hwfn*) ;
 int taskqueue_enqueue (int *,int *) ;

__attribute__((used)) static void
qlnx_vf_bulleting_update(struct ecore_hwfn *p_hwfn)
{
 qlnx_host_t *ha = (qlnx_host_t *)p_hwfn->p_dev;
 int i;

 QL_DPRINT2(ha, "ha = %p cdev = %p p_hwfn = %p \n",
  ha, p_hwfn->p_dev, p_hwfn);

 if ((i = qlnx_find_hwfn_index(p_hwfn)) == -1)
  return;

 QL_DPRINT2(ha, "ha = %p cdev = %p p_hwfn = %p i = %d\n",
  ha, p_hwfn->p_dev, p_hwfn, i);

 if (ha->sriov_task[i].pf_taskqueue != ((void*)0)) {

  atomic_testandset_32(&ha->sriov_task[i].flags,
   QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE);

  taskqueue_enqueue(ha->sriov_task[i].pf_taskqueue,
   &ha->sriov_task[i].pf_task);
 }
}
