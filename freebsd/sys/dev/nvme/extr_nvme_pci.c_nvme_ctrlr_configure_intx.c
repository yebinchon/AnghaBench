
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int num_io_queues; int * tag; int * res; int dev; scalar_t__ rid; scalar_t__ msix_enabled; } ;


 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct nvme_controller*,int **) ;
 int nvme_ctrlr_intx_handler ;
 int nvme_printf (struct nvme_controller*,char*) ;

__attribute__((used)) static int
nvme_ctrlr_configure_intx(struct nvme_controller *ctrlr)
{

 ctrlr->msix_enabled = 0;
 ctrlr->num_io_queues = 1;
 ctrlr->rid = 0;
 ctrlr->res = bus_alloc_resource_any(ctrlr->dev, SYS_RES_IRQ,
     &ctrlr->rid, RF_SHAREABLE | RF_ACTIVE);

 if (ctrlr->res == ((void*)0)) {
  nvme_printf(ctrlr, "unable to allocate shared IRQ\n");
  return (ENOMEM);
 }

 bus_setup_intr(ctrlr->dev, ctrlr->res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), nvme_ctrlr_intx_handler,
     ctrlr, &ctrlr->tag);

 if (ctrlr->tag == ((void*)0)) {
  nvme_printf(ctrlr, "unable to setup intx handler\n");
  return (ENOMEM);
 }

 return (0);
}
