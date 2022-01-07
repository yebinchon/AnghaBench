
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * els; scalar_t__ ext_status; scalar_t__ status; } ;
typedef TYPE_1__ ocs_node_cb_t ;
typedef int ocs_io_t ;


 int OCS_EVT_ELS_REQ_ABORTED ;
 int els_io_printf (int *,char*) ;
 int ocs_els_io_cleanup (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void
ocs_els_abort_cleanup(ocs_io_t *els)
{




 ocs_node_cb_t cbdata;
 cbdata.status = cbdata.ext_status = 0;
 cbdata.els = els;
 els_io_printf(els, "Request aborted\n");
 ocs_els_io_cleanup(els, OCS_EVT_ELS_REQ_ABORTED, &cbdata);
}
