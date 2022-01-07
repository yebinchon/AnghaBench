
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_13__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_14__ {int sgl_allocated; int els_rsp; int els_req; int rspbuf; int cmdbuf; TYPE_4__* sgl; } ;
typedef TYPE_3__ ocs_io_t ;
struct TYPE_15__ {scalar_t__ io_num_ios; int lock; int * pool; TYPE_2__* ocs; } ;
typedef TYPE_4__ ocs_io_pool_t ;
typedef int int32_t ;
struct TYPE_12__ {int * io_pool; } ;


 int ocs_dma_free (TYPE_2__*,int *) ;
 int ocs_free (TYPE_2__*,TYPE_4__*,int) ;
 int ocs_lock_free (int *) ;
 int ocs_pool_free (int *) ;
 TYPE_3__* ocs_pool_get_instance (int *,scalar_t__) ;
 int ocs_scsi_ini_io_exit (TYPE_3__*) ;
 int ocs_scsi_tgt_io_exit (TYPE_3__*) ;

int32_t
ocs_io_pool_free(ocs_io_pool_t *io_pool)
{
 ocs_t *ocs;
 uint32_t i;
 ocs_io_t *io;

 if (io_pool != ((void*)0)) {
  ocs = io_pool->ocs;
  for (i = 0; i < io_pool->io_num_ios; i++) {
   io = ocs_pool_get_instance(io_pool->pool, i);
   if (!io)
    continue;
   ocs_scsi_tgt_io_exit(io);
   ocs_scsi_ini_io_exit(io);
   if (io->sgl) {
    ocs_free(ocs, io->sgl, sizeof(*io->sgl) * io->sgl_allocated);
   }
   ocs_dma_free(ocs, &io->cmdbuf);
   ocs_dma_free(ocs, &io->rspbuf);
   ocs_dma_free(ocs, &io->els_req);
   ocs_dma_free(ocs, &io->els_rsp);
  }

  if (io_pool->pool != ((void*)0)) {
   ocs_pool_free(io_pool->pool);
  }
  ocs_lock_free(&io_pool->lock);
  ocs_free(ocs, io_pool, sizeof(*io_pool));
  ocs->xport->io_pool = ((void*)0);
 }

 return 0;
}
