
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {scalar_t__ num_rq_threads; TYPE_1__* rq_thread_info; int * ocs; } ;
typedef TYPE_2__ ocs_xport_t ;
typedef int ocs_t ;
struct TYPE_4__ {int * seq_cbuf; scalar_t__ thread_started; int thread; } ;


 int ocs_cbuf_free (int *) ;
 int ocs_log_debug (int *,char*,size_t) ;
 int ocs_thread_terminate (int *) ;
 int ocs_udelay (int) ;

__attribute__((used)) static void
ocs_xport_rq_threads_teardown(ocs_xport_t *xport)
{
 ocs_t *ocs = xport->ocs;
 uint32_t i;

 if (xport->num_rq_threads == 0 ||
     xport->rq_thread_info == ((void*)0)) {
  return;
 }


 for (i = 0; i < xport->num_rq_threads; i++) {
  if (xport->rq_thread_info[i].thread_started) {
   ocs_thread_terminate(&xport->rq_thread_info[i].thread);

   ocs_log_debug(ocs, "wait for thread %d to exit\n", i);
   while (xport->rq_thread_info[i].thread_started) {
    ocs_udelay(10000);
   }
   ocs_log_debug(ocs, "thread %d to exited\n", i);
  }
  if (xport->rq_thread_info[i].seq_cbuf != ((void*)0)) {
   ocs_cbuf_free(xport->rq_thread_info[i].seq_cbuf);
   xport->rq_thread_info[i].seq_cbuf = ((void*)0);
  }
 }
}
