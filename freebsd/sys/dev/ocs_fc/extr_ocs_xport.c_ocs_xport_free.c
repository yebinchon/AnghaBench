
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {int lock; } ;
struct TYPE_8__ {TYPE_1__* fcfi; TYPE_5__ io_pending_lock; int io_pool; int * ocs; } ;
typedef TYPE_2__ ocs_xport_t ;
typedef int ocs_t ;
struct TYPE_7__ {TYPE_5__ pend_frames_lock; } ;


 size_t SLI4_MAX_FCFI ;
 scalar_t__ mtx_initialized (int *) ;
 int ocs_free (int *,TYPE_2__*,int) ;
 int ocs_io_pool_free (int ) ;
 int ocs_lock_free (TYPE_5__*) ;
 int ocs_node_free_pool (int *) ;
 int ocs_xport_rq_threads_teardown (TYPE_2__*) ;

void
ocs_xport_free(ocs_xport_t *xport)
{
 ocs_t *ocs;
 uint32_t i;

 if (xport) {
  ocs = xport->ocs;
  ocs_io_pool_free(xport->io_pool);
  ocs_node_free_pool(ocs);
  if(mtx_initialized(&xport->io_pending_lock.lock))
   ocs_lock_free(&xport->io_pending_lock);

  for (i = 0; i < SLI4_MAX_FCFI; i++) {
   ocs_lock_free(&xport->fcfi[i].pend_frames_lock);
  }

  ocs_xport_rq_threads_teardown(xport);

  ocs_free(ocs, xport, sizeof(*xport));
 }
}
