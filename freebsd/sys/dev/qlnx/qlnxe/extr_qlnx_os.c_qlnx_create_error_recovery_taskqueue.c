
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tq_name ;
struct TYPE_5__ {int * err_taskqueue; int err_task; } ;
typedef TYPE_1__ qlnx_host_t ;


 int M_NOWAIT ;
 int PI_NET ;
 int QL_DPRINT1 (TYPE_1__*,char*,int *) ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int bzero (int *,int) ;
 int qlnx_error_recovery_taskqueue ;
 int snprintf (int *,int,char*) ;
 int * taskqueue_create (int *,int ,int ,int **) ;
 int taskqueue_start_threads (int **,int,int ,char*,int *) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
qlnx_create_error_recovery_taskqueue(qlnx_host_t *ha)
{
        uint8_t tq_name[32];

        bzero(tq_name, sizeof (tq_name));
        snprintf(tq_name, sizeof (tq_name), "ql_err_tq");

        TASK_INIT(&ha->err_task, 0, qlnx_error_recovery_taskqueue, ha);

        ha->err_taskqueue = taskqueue_create(tq_name, M_NOWAIT,
                                taskqueue_thread_enqueue, &ha->err_taskqueue);


        if (ha->err_taskqueue == ((void*)0))
                return (-1);

        taskqueue_start_threads(&ha->err_taskqueue, 1, PI_NET, "%s", tq_name);

        QL_DPRINT1(ha, "%p\n",ha->err_taskqueue);

        return (0);
}
