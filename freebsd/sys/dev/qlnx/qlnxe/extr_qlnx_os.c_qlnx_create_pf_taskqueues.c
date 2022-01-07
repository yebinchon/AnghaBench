
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tq_name ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_6__ {int num_hwfns; struct ecore_hwfn* hwfns; } ;
struct TYPE_8__ {TYPE_2__* sriov_task; TYPE_1__ cdev; } ;
typedef TYPE_3__ qlnx_host_t ;
struct TYPE_7__ {int * pf_taskqueue; int pf_task; } ;


 int M_NOWAIT ;
 int PI_NET ;
 int QL_DPRINT1 (TYPE_3__*,char*,int *) ;
 int TASK_INIT (int *,int ,int ,struct ecore_hwfn*) ;
 int bzero (int *,int) ;
 int qlnx_pf_taskqueue ;
 int snprintf (int *,int,char*,int) ;
 int * taskqueue_create (int *,int ,int ,int **) ;
 int taskqueue_start_threads (int **,int,int ,char*,int *) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
qlnx_create_pf_taskqueues(qlnx_host_t *ha)
{
 int i;
 uint8_t tq_name[32];

 for (i = 0; i < ha->cdev.num_hwfns; i++) {

                struct ecore_hwfn *p_hwfn = &ha->cdev.hwfns[i];

  bzero(tq_name, sizeof (tq_name));
  snprintf(tq_name, sizeof (tq_name), "ql_pf_tq_%d", i);

  TASK_INIT(&ha->sriov_task[i].pf_task, 0, qlnx_pf_taskqueue, p_hwfn);

  ha->sriov_task[i].pf_taskqueue = taskqueue_create(tq_name, M_NOWAIT,
    taskqueue_thread_enqueue,
   &ha->sriov_task[i].pf_taskqueue);

  if (ha->sriov_task[i].pf_taskqueue == ((void*)0))
   return (-1);

  taskqueue_start_threads(&ha->sriov_task[i].pf_taskqueue, 1,
   PI_NET, "%s", tq_name);

  QL_DPRINT1(ha, "%p\n", ha->sriov_task[i].pf_taskqueue);
 }

 return (0);
}
