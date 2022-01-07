
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* xport; int hw; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_11__ {int io_free; int * hio; } ;
typedef TYPE_3__ ocs_io_t ;
struct TYPE_12__ {int lock; int pool; TYPE_2__* ocs; } ;
typedef TYPE_4__ ocs_io_pool_t ;
typedef int ocs_hw_io_t ;
struct TYPE_9__ {int io_total_free; int io_active_count; } ;


 int ocs_assert (TYPE_4__*) ;
 int ocs_atomic_add_return (int *,int) ;
 int ocs_atomic_sub_return (int *,int) ;
 int ocs_hw_io_free (int *,int *) ;
 int ocs_lock (int *) ;
 int ocs_pool_put (int ,TYPE_3__*) ;
 int ocs_unlock (int *) ;

void
ocs_io_pool_io_free(ocs_io_pool_t *io_pool, ocs_io_t *io)
{
 ocs_t *ocs;
 ocs_hw_io_t *hio = ((void*)0);

 ocs_assert(io_pool);

 ocs = io_pool->ocs;

 ocs_lock(&io_pool->lock);
  hio = io->hio;
  io->hio = ((void*)0);
  ocs_pool_put(io_pool->pool, io);
 ocs_unlock(&io_pool->lock);

 if (hio) {
  ocs_hw_io_free(&ocs->hw, hio);
 }
 io->io_free = 1;
 ocs_atomic_sub_return(&ocs->xport->io_active_count, 1);
 ocs_atomic_add_return(&ocs->xport->io_total_free, 1);
}
