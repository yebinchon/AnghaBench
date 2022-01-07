
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int * lock; scalar_t__ parent_dmat; int * gp; int * mpu; int * vc; int * sb; int * io; int * irq; scalar_t__ ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int free (struct ess_info*,int ) ;
 int snd_mtxfree (int *) ;

__attribute__((used)) static void
ess_release_resources(struct ess_info *sc, device_t dev)
{
     if (sc->irq) {
  if (sc->ih)
   bus_teardown_intr(dev, sc->irq, sc->ih);
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
  sc->irq = ((void*)0);
     }
     if (sc->io) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0), sc->io);
  sc->io = ((void*)0);
     }

     if (sc->sb) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(1), sc->sb);
  sc->sb = ((void*)0);
     }

     if (sc->vc) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(2), sc->vc);
  sc->vc = ((void*)0);
     }

     if (sc->mpu) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(3), sc->mpu);
  sc->mpu = ((void*)0);
     }

     if (sc->gp) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(4), sc->gp);
  sc->gp = ((void*)0);
     }

 if (sc->parent_dmat) {
  bus_dma_tag_destroy(sc->parent_dmat);
  sc->parent_dmat = 0;
     }
     free(sc, M_DEVBUF);
}
