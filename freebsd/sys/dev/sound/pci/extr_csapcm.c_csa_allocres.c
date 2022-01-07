
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irq; int irq_rid; int * mem; int mem_rid; int * io; int io_rid; } ;
struct csa_info {int parent_dmat; TYPE_1__ res; } ;
typedef int device_t ;
typedef TYPE_1__ csa_res ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CS461x_BUFFSIZE ;
 int Giant ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int *,int) ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;

__attribute__((used)) static int
csa_allocres(struct csa_info *csa, device_t dev)
{
 csa_res *resp;

 resp = &csa->res;
 if (resp->io == ((void*)0)) {
  resp->io = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
   &resp->io_rid, RF_ACTIVE);
  if (resp->io == ((void*)0))
   return (1);
 }
 if (resp->mem == ((void*)0)) {
  resp->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
   &resp->mem_rid, RF_ACTIVE);
  if (resp->mem == ((void*)0))
   return (1);
 }
 if (resp->irq == ((void*)0)) {
  resp->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
   &resp->irq_rid, RF_ACTIVE | RF_SHAREABLE);
  if (resp->irq == ((void*)0))
   return (1);
 }
 if (bus_dma_tag_create( bus_get_dma_tag(dev),
                       CS461x_BUFFSIZE,
                      CS461x_BUFFSIZE,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
                     CS461x_BUFFSIZE, 1, 0x3ffff,
                   0, busdma_lock_mutex,
                     &Giant, &csa->parent_dmat) != 0)
  return (1);

 return (0);
}
