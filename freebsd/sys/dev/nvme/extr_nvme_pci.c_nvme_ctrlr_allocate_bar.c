
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_registers {int dummy; } ;
struct nvme_controller {void* bar4_resource_id; int dev; void* bar4_resource; scalar_t__ bus_handle; struct nvme_registers* regs; int * resource; int bus_tag; void* resource_id; } ;


 int ENOMEM ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,void**,int ) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 scalar_t__ rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
nvme_ctrlr_allocate_bar(struct nvme_controller *ctrlr)
{

 ctrlr->resource_id = PCIR_BAR(0);

 ctrlr->resource = bus_alloc_resource_any(ctrlr->dev, SYS_RES_MEMORY,
     &ctrlr->resource_id, RF_ACTIVE);

 if(ctrlr->resource == ((void*)0)) {
  nvme_printf(ctrlr, "unable to allocate pci resource\n");
  return (ENOMEM);
 }

 ctrlr->bus_tag = rman_get_bustag(ctrlr->resource);
 ctrlr->bus_handle = rman_get_bushandle(ctrlr->resource);
 ctrlr->regs = (struct nvme_registers *)ctrlr->bus_handle;
 ctrlr->bar4_resource_id = PCIR_BAR(4);
 ctrlr->bar4_resource = bus_alloc_resource_any(ctrlr->dev, SYS_RES_MEMORY,
     &ctrlr->bar4_resource_id, RF_ACTIVE);

 return (0);
}
