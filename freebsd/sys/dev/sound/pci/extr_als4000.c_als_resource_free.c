
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int * lock; scalar_t__ parent_dmat; int * irq; int irqid; int * ih; int * reg; int regid; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int snd_mtxfree (int *) ;

__attribute__((used)) static void
als_resource_free(device_t dev, struct sc_info *sc)
{
 if (sc->reg) {
  bus_release_resource(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
  sc->reg = ((void*)0);
 }
 if (sc->ih) {
  bus_teardown_intr(dev, sc->irq, sc->ih);
  sc->ih = ((void*)0);
 }
 if (sc->irq) {
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
  sc->irq = ((void*)0);
 }
 if (sc->parent_dmat) {
  bus_dma_tag_destroy(sc->parent_dmat);
  sc->parent_dmat = 0;
 }
 if (sc->lock) {
  snd_mtxfree(sc->lock);
  sc->lock = ((void*)0);
 }
}
