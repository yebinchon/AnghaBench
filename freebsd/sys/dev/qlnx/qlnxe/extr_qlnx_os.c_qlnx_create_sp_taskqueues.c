
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tq_name ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {int num_hwfns; struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {int ** sp_taskqueue; int * sp_task; TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int M_NOWAIT ;
 int PI_NET ;
 int QL_DPRINT1 (TYPE_2__*,char*,int *) ;
 int TASK_INIT (int *,int ,int ,struct ecore_hwfn*) ;
 int bzero (int *,int) ;
 int qlnx_sp_taskqueue ;
 int snprintf (int *,int,char*,int) ;
 int * taskqueue_create (int *,int ,int ,int **) ;
 int taskqueue_start_threads (int **,int,int ,char*,int *) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
qlnx_create_sp_taskqueues(qlnx_host_t *ha)
{
 int i;
 uint8_t tq_name[32];

 for (i = 0; i < ha->cdev.num_hwfns; i++) {

                struct ecore_hwfn *p_hwfn = &ha->cdev.hwfns[i];

  bzero(tq_name, sizeof (tq_name));
  snprintf(tq_name, sizeof (tq_name), "ql_sp_tq_%d", i);

  TASK_INIT(&ha->sp_task[i], 0, qlnx_sp_taskqueue, p_hwfn);

  ha->sp_taskqueue[i] = taskqueue_create(tq_name, M_NOWAIT,
    taskqueue_thread_enqueue, &ha->sp_taskqueue[i]);

  if (ha->sp_taskqueue[i] == ((void*)0))
   return (-1);

  taskqueue_start_threads(&ha->sp_taskqueue[i], 1, PI_NET, "%s",
   tq_name);

  QL_DPRINT1(ha, "%p\n", ha->sp_taskqueue[i]);
 }

 return (0);
}
