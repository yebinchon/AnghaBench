
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int num_rq_threads; TYPE_6__* rq_thread_info; TYPE_2__* ocs; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef int ocs_xport_rq_thread_info_t ;
struct TYPE_13__ {int instance_index; } ;
typedef TYPE_2__ ocs_t ;
typedef int int32_t ;
struct TYPE_14__ {int thread_started; int thread_name; int thread; int * seq_cbuf; TYPE_2__* ocs; } ;


 int OCS_HW_RQ_NUM_HDR ;
 int OCS_M_ZERO ;
 int OCS_THREAD_RUN ;
 int TRUE ;
 int * ocs_cbuf_alloc (TYPE_2__*,int ) ;
 int ocs_log_debug (TYPE_2__*,char*,int) ;
 int ocs_log_err (TYPE_2__*,char*,...) ;
 TYPE_6__* ocs_malloc (TYPE_2__*,int,int ) ;
 int ocs_snprintf (int ,int,char*,int ,int) ;
 int ocs_thread_create (TYPE_2__*,int *,int ,int ,TYPE_6__*,int ) ;
 int ocs_unsol_rq_thread ;
 int ocs_xport_rq_threads_teardown (TYPE_1__*) ;

__attribute__((used)) static int32_t
ocs_xport_rq_threads_create(ocs_xport_t *xport, uint32_t num_rq_threads)
{
 ocs_t *ocs = xport->ocs;
 int32_t rc = 0;
 uint32_t i;

 xport->num_rq_threads = num_rq_threads;
 ocs_log_debug(ocs, "number of RQ threads %d\n", num_rq_threads);
 if (num_rq_threads == 0) {
  return 0;
 }


 xport->rq_thread_info = ocs_malloc(ocs, sizeof(ocs_xport_rq_thread_info_t) * num_rq_threads, OCS_M_ZERO);
 if (xport->rq_thread_info == ((void*)0)) {
  ocs_log_err(ocs, "memory allocation failure\n");
  return -1;
 }


 for (i = 0; i < num_rq_threads; i++) {
  xport->rq_thread_info[i].ocs = ocs;
  xport->rq_thread_info[i].seq_cbuf = ocs_cbuf_alloc(ocs, OCS_HW_RQ_NUM_HDR);
  if (xport->rq_thread_info[i].seq_cbuf == ((void*)0)) {
   goto ocs_xport_rq_threads_create_error;
  }

  ocs_snprintf(xport->rq_thread_info[i].thread_name,
        sizeof(xport->rq_thread_info[i].thread_name),
        "ocs_unsol_rq:%d:%d", ocs->instance_index, i);
  rc = ocs_thread_create(ocs, &xport->rq_thread_info[i].thread, ocs_unsol_rq_thread,
           xport->rq_thread_info[i].thread_name,
           &xport->rq_thread_info[i], OCS_THREAD_RUN);
  if (rc) {
   ocs_log_err(ocs, "ocs_thread_create failed: %d\n", rc);
   goto ocs_xport_rq_threads_create_error;
  }
  xport->rq_thread_info[i].thread_started = TRUE;
 }
 return 0;

ocs_xport_rq_threads_create_error:
 ocs_xport_rq_threads_teardown(xport);
 return -1;
}
