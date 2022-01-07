
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int num_io_queues; int lock; int * resource; int resource_id; int * bar4_resource; int bar4_resource_id; int * res; int dev; scalar_t__ tag; scalar_t__ taskqueue; int adminq; int * ioq; scalar_t__ is_initialized; scalar_t__ cdev; int * ns; } ;
typedef int device_t ;


 int M_NVME ;
 int NVME_MAX_NAMESPACES ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int csts ;
 int destroy_dev (scalar_t__) ;
 int free (int *,int ) ;
 int mtx_destroy (int *) ;
 int nvme_admin_qpair_destroy (int *) ;
 int nvme_ctrlr_delete_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_disable (struct nvme_controller*) ;
 int nvme_ctrlr_fail (struct nvme_controller*) ;
 int nvme_ctrlr_shutdown (struct nvme_controller*) ;
 int nvme_io_qpair_destroy (int *) ;
 int nvme_mmio_read_4 (struct nvme_controller*,int ) ;
 int nvme_notify_fail_consumers (struct nvme_controller*) ;
 int nvme_ns_destruct (int *) ;
 int rman_get_rid (int *) ;
 int taskqueue_free (scalar_t__) ;

void
nvme_ctrlr_destruct(struct nvme_controller *ctrlr, device_t dev)
{
 int gone, i;

 if (ctrlr->resource == ((void*)0))
  goto nores;





 gone = (nvme_mmio_read_4(ctrlr, csts) == 0xffffffff);
 if (gone)
  nvme_ctrlr_fail(ctrlr);
 else
  nvme_notify_fail_consumers(ctrlr);

 for (i = 0; i < NVME_MAX_NAMESPACES; i++)
  nvme_ns_destruct(&ctrlr->ns[i]);

 if (ctrlr->cdev)
  destroy_dev(ctrlr->cdev);

 if (ctrlr->is_initialized) {
  if (!gone)
   nvme_ctrlr_delete_qpairs(ctrlr);
  for (i = 0; i < ctrlr->num_io_queues; i++)
   nvme_io_qpair_destroy(&ctrlr->ioq[i]);
  free(ctrlr->ioq, M_NVME);
  nvme_admin_qpair_destroy(&ctrlr->adminq);
 }
 if (!gone)
  nvme_ctrlr_shutdown(ctrlr);

 if (!gone)
  nvme_ctrlr_disable(ctrlr);

 if (ctrlr->taskqueue)
  taskqueue_free(ctrlr->taskqueue);

 if (ctrlr->tag)
  bus_teardown_intr(ctrlr->dev, ctrlr->res, ctrlr->tag);

 if (ctrlr->res)
  bus_release_resource(ctrlr->dev, SYS_RES_IRQ,
      rman_get_rid(ctrlr->res), ctrlr->res);

 if (ctrlr->bar4_resource != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctrlr->bar4_resource_id, ctrlr->bar4_resource);
 }

 bus_release_resource(dev, SYS_RES_MEMORY,
     ctrlr->resource_id, ctrlr->resource);

nores:
 mtx_destroy(&ctrlr->lock);
}
