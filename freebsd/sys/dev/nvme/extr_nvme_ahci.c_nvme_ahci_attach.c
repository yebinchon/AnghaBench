
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_registers {int dummy; } ;
struct nvme_controller {int num_io_queues; int * res; int dev; int * resource; scalar_t__ resource_id; void* tag; scalar_t__ msix_enabled; scalar_t__ rid; scalar_t__ bus_handle; struct nvme_registers* regs; int bus_tag; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct nvme_controller*,void**) ;
 int nvme_attach (int ) ;
 int nvme_ctrlr_intx_handler ;
 int nvme_printf (struct nvme_controller*,char*) ;
 scalar_t__ rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ rman_get_rid (int *) ;

__attribute__((used)) static int
nvme_ahci_attach(device_t dev)
{
 struct nvme_controller*ctrlr = DEVICE2SOFTC(dev);
 int ret;


 ctrlr->resource_id = 0;

 ctrlr->resource = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctrlr->resource_id, RF_ACTIVE);

 if(ctrlr->resource == ((void*)0)) {
  nvme_printf(ctrlr, "unable to allocate mem resource\n");
  ret = ENOMEM;
  goto bad;
 }
 ctrlr->bus_tag = rman_get_bustag(ctrlr->resource);
 ctrlr->bus_handle = rman_get_bushandle(ctrlr->resource);
 ctrlr->regs = (struct nvme_registers *)ctrlr->bus_handle;


 ctrlr->rid = 0;
 ctrlr->res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &ctrlr->rid, RF_SHAREABLE | RF_ACTIVE);

 if (ctrlr->res == ((void*)0)) {
  nvme_printf(ctrlr, "unable to allocate shared IRQ\n");
  ret = ENOMEM;
  goto bad;
 }

 ctrlr->msix_enabled = 0;
 ctrlr->num_io_queues = 1;
 if (bus_setup_intr(dev, ctrlr->res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), nvme_ctrlr_intx_handler,
     ctrlr, &ctrlr->tag) != 0) {
  nvme_printf(ctrlr, "unable to setup intx handler\n");
  ret = ENOMEM;
  goto bad;
 }
 ctrlr->tag = (void *)0x1;

 return nvme_attach(dev);
bad:
 if (ctrlr->resource != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctrlr->resource_id, ctrlr->resource);
 }
 if (ctrlr->res)
  bus_release_resource(ctrlr->dev, SYS_RES_IRQ,
      rman_get_rid(ctrlr->res), ctrlr->res);
 return (ret);
}
