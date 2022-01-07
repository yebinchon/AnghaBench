
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_15__ {scalar_t__ enable_ini; int instance_index; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_16__ {int els_rsp; int els_req; scalar_t__ sgl_count; scalar_t__ sgl_allocated; int * sgl; int rspbuf; int cmdbuf; TYPE_1__* ocs; scalar_t__ instance_index; scalar_t__ tag; } ;
typedef TYPE_2__ ocs_io_t ;
struct TYPE_17__ {scalar_t__ io_num_ios; int pool; int lock; TYPE_1__* ocs; } ;
typedef TYPE_3__ ocs_io_pool_t ;
typedef int int32_t ;


 int FALSE ;
 int OCS_ELS_GID_PT_RSP_LEN ;
 int OCS_ELS_REQ_LEN ;
 int OCS_MIN_DMA_ALIGNMENT ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SCSI_CMD_BUF_LENGTH ;
 int SCSI_RSP_BUF_LENGTH ;
 int ocs_dma_alloc (TYPE_1__*,int *,int ,int ) ;
 int ocs_io_pool_free (TYPE_3__*) ;
 int ocs_lock_init (TYPE_1__*,int *,char*,int ) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 void* ocs_malloc (TYPE_1__*,int,int) ;
 int ocs_pool_alloc (TYPE_1__*,int,scalar_t__,int ) ;
 TYPE_2__* ocs_pool_get_instance (int ,scalar_t__) ;
 int ocs_scsi_ini_io_init (TYPE_2__*) ;
 int ocs_scsi_tgt_io_init (TYPE_2__*) ;

ocs_io_pool_t *
ocs_io_pool_create(ocs_t *ocs, uint32_t num_io, uint32_t num_sgl)
{
 uint32_t i = 0;
 int32_t rc = -1;
 ocs_io_pool_t *io_pool;


 io_pool = ocs_malloc(ocs, sizeof(*io_pool), OCS_M_ZERO | OCS_M_NOWAIT);
 if (io_pool == ((void*)0)) {
  ocs_log_err(ocs, "allocate of IO pool failed\n");
  return ((void*)0);;
 }

 io_pool->ocs = ocs;
 io_pool->io_num_ios = num_io;


 ocs_lock_init(ocs, &io_pool->lock, "io_pool lock[%d]", ocs->instance_index);

 io_pool->pool = ocs_pool_alloc(ocs, sizeof(ocs_io_t), io_pool->io_num_ios, FALSE);

 for (i = 0; i < io_pool->io_num_ios; i++) {
  ocs_io_t *io = ocs_pool_get_instance(io_pool->pool, i);

  io->tag = i;
  io->instance_index = i;
  io->ocs = ocs;


  if (ocs->enable_ini) {
   rc = ocs_dma_alloc(ocs, &io->cmdbuf, SCSI_CMD_BUF_LENGTH, OCS_MIN_DMA_ALIGNMENT);
   if (rc) {
    ocs_log_err(ocs, "ocs_dma_alloc cmdbuf failed\n");
    ocs_io_pool_free(io_pool);
    return ((void*)0);
   }
  }


  rc = ocs_dma_alloc(ocs, &io->rspbuf, SCSI_RSP_BUF_LENGTH, OCS_MIN_DMA_ALIGNMENT);
  if (rc) {
   ocs_log_err(ocs, "ocs_dma_alloc cmdbuf failed\n");
   ocs_io_pool_free(io_pool);
   return ((void*)0);
  }


  io->sgl = ocs_malloc(ocs, sizeof(*io->sgl) * num_sgl, OCS_M_NOWAIT | OCS_M_ZERO);
  if (io->sgl == ((void*)0)) {
   ocs_log_err(ocs, "malloc sgl's failed\n");
   ocs_io_pool_free(io_pool);
   return ((void*)0);
  }
  io->sgl_allocated = num_sgl;
  io->sgl_count = 0;


  ocs_scsi_tgt_io_init(io);
  ocs_scsi_ini_io_init(io);

  rc = ocs_dma_alloc(ocs, &io->els_req, OCS_ELS_REQ_LEN, OCS_MIN_DMA_ALIGNMENT);
  if (rc) {
   ocs_log_err(ocs, "ocs_dma_alloc els_req failed\n");
   ocs_io_pool_free(io_pool);
   return ((void*)0);
   }

  rc = ocs_dma_alloc(ocs, &io->els_rsp, OCS_ELS_GID_PT_RSP_LEN, OCS_MIN_DMA_ALIGNMENT);
  if (rc) {
   ocs_log_err(ocs, "ocs_dma_alloc els_rsp failed\n");
   ocs_io_pool_free(io_pool);
   return ((void*)0);
   }
 }

 return io_pool;
}
