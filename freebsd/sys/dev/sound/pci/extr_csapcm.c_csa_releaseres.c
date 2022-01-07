
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mem; int mem_rid; int * io; int io_rid; int * irq; int irq_rid; } ;
struct csa_info {int * parent_dmat; int ih; TYPE_1__ res; } ;
typedef int device_t ;
typedef TYPE_1__ csa_res ;


 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int free (struct csa_info*,int ) ;

__attribute__((used)) static void
csa_releaseres(struct csa_info *csa, device_t dev)
{
 csa_res *resp;

 KASSERT(csa != ((void*)0), ("called with bogus resource structure"));

 resp = &csa->res;
 if (resp->irq != ((void*)0)) {
  if (csa->ih)
   bus_teardown_intr(dev, resp->irq, csa->ih);
  bus_release_resource(dev, SYS_RES_IRQ, resp->irq_rid, resp->irq);
  resp->irq = ((void*)0);
 }
 if (resp->io != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, resp->io_rid, resp->io);
  resp->io = ((void*)0);
 }
 if (resp->mem != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, resp->mem_rid, resp->mem);
  resp->mem = ((void*)0);
 }
 if (csa->parent_dmat != ((void*)0)) {
  bus_dma_tag_destroy(csa->parent_dmat);
  csa->parent_dmat = ((void*)0);
 }

 free(csa, M_DEVBUF);
}
