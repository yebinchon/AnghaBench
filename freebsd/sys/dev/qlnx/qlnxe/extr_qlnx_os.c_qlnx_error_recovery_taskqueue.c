
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int qlnx_callout; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QLNX_LOCK (TYPE_1__*) ;
 int QLNX_UNLOCK (TYPE_1__*) ;
 int QL_DPRINT2 (TYPE_1__*,char*) ;
 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 int hz ;
 int qlnx_init (TYPE_1__*) ;
 int qlnx_rdma_dev_add (TYPE_1__*) ;
 int qlnx_rdma_dev_remove (TYPE_1__*) ;
 int qlnx_slowpath_start (TYPE_1__*) ;
 int qlnx_slowpath_stop (TYPE_1__*) ;
 int qlnx_stop (TYPE_1__*) ;
 int qlnx_timer ;

__attribute__((used)) static void
qlnx_error_recovery_taskqueue(void *context, int pending)
{
        qlnx_host_t *ha;

        ha = context;

        QL_DPRINT2(ha, "enter\n");

        QLNX_LOCK(ha);
        qlnx_stop(ha);
        QLNX_UNLOCK(ha);





        qlnx_slowpath_stop(ha);
        qlnx_slowpath_start(ha);





        qlnx_init(ha);

        callout_reset(&ha->qlnx_callout, hz, qlnx_timer, ha);

        QL_DPRINT2(ha, "exit\n");

        return;
}
