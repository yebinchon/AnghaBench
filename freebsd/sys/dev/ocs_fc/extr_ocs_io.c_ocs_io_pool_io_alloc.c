
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_11__ {char* display_name; scalar_t__ io_free; int * mgmt_functions; scalar_t__ els_req_free; scalar_t__ seq_init; scalar_t__ hw_tag; scalar_t__ init_task_tag; scalar_t__ tgt_task_tag; scalar_t__ sgl_count; scalar_t__ timeout; TYPE_2__* ocs; scalar_t__ transferred; int * hio; int hio_type; int io_type; } ;
typedef TYPE_3__ ocs_io_t ;
struct TYPE_12__ {int lock; int pool; TYPE_2__* ocs; } ;
typedef TYPE_4__ ocs_io_pool_t ;
struct TYPE_9__ {int io_total_alloc; int io_active_count; } ;


 int OCS_HW_IO_MAX ;
 int OCS_IO_TYPE_MAX ;
 int io_mgmt_functions ;
 int ocs_assert (TYPE_4__*,int *) ;
 int ocs_atomic_add_return (int *,int) ;
 int ocs_lock (int *) ;
 TYPE_3__* ocs_pool_get (int ) ;
 int ocs_unlock (int *) ;

ocs_io_t *
ocs_io_pool_io_alloc(ocs_io_pool_t *io_pool)
{
 ocs_io_t *io = ((void*)0);
 ocs_t *ocs;

 ocs_assert(io_pool, ((void*)0));

 ocs = io_pool->ocs;

 ocs_lock(&io_pool->lock);
 if ((io = ocs_pool_get(io_pool->pool)) != ((void*)0)) {
  ocs_unlock(&io_pool->lock);

  io->io_type = OCS_IO_TYPE_MAX;
  io->hio_type = OCS_HW_IO_MAX;
  io->hio = ((void*)0);
  io->transferred = 0;
  io->ocs = ocs;
  io->timeout = 0;
  io->sgl_count = 0;
  io->tgt_task_tag = 0;
  io->init_task_tag = 0;
  io->hw_tag = 0;
  io->display_name = "pending";
  io->seq_init = 0;
  io->els_req_free = 0;
  io->mgmt_functions = &io_mgmt_functions;
  io->io_free = 0;
  ocs_atomic_add_return(&ocs->xport->io_active_count, 1);
  ocs_atomic_add_return(&ocs->xport->io_total_alloc, 1);
 } else {
  ocs_unlock(&io_pool->lock);
 }
 return io;
}
