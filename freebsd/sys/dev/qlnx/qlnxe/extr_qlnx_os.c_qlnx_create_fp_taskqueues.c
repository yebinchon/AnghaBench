
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tq_name ;
struct qlnx_fastpath {int * fp_taskqueue; int fp_task; } ;
struct TYPE_4__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_1__ qlnx_host_t ;


 int M_NOWAIT ;
 int PI_NET ;
 int QL_DPRINT1 (TYPE_1__*,char*,int *) ;
 int TASK_INIT (int *,int ,int ,struct qlnx_fastpath*) ;
 int bzero (int *,int) ;
 int qlnx_fp_taskqueue ;
 int snprintf (int *,int,char*,int) ;
 int * taskqueue_create (int *,int ,int ,int **) ;
 int taskqueue_start_threads (int **,int,int ,char*,int *) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
qlnx_create_fp_taskqueues(qlnx_host_t *ha)
{
 int i;
 uint8_t tq_name[32];
 struct qlnx_fastpath *fp;

 for (i = 0; i < ha->num_rss; i++) {

                fp = &ha->fp_array[i];

  bzero(tq_name, sizeof (tq_name));
  snprintf(tq_name, sizeof (tq_name), "ql_fp_tq_%d", i);

  TASK_INIT(&fp->fp_task, 0, qlnx_fp_taskqueue, fp);

  fp->fp_taskqueue = taskqueue_create(tq_name, M_NOWAIT,
     taskqueue_thread_enqueue,
     &fp->fp_taskqueue);

  if (fp->fp_taskqueue == ((void*)0))
   return (-1);

  taskqueue_start_threads(&fp->fp_taskqueue, 1, PI_NET, "%s",
   tq_name);

  QL_DPRINT1(ha, "%p\n",fp->fp_taskqueue);
 }

 return (0);
}
