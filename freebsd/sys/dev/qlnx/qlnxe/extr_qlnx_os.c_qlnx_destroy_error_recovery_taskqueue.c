
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * err_taskqueue; int err_task; } ;
typedef TYPE_1__ qlnx_host_t ;


 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
qlnx_destroy_error_recovery_taskqueue(qlnx_host_t *ha)
{
        if (ha->err_taskqueue != ((void*)0)) {
                taskqueue_drain(ha->err_taskqueue, &ha->err_task);
                taskqueue_free(ha->err_taskqueue);
        }

        ha->err_taskqueue = ((void*)0);

        return;
}
