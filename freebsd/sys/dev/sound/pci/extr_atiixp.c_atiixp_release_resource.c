
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_info {scalar_t__ registered_channels; int * lock; int * sgd_dmat; int * sgd_table; int sgd_dmamap; scalar_t__ sgd_addr; int * parent_dmat; int * irq; int irqid; int dev; int * reg; int regid; int regtype; int * ih; int * codec; int poll_timer; scalar_t__ polling; } ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int ac97_destroy (int *) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int free (struct atiixp_info*,int ) ;
 int snd_mtxfree (int *) ;

__attribute__((used)) static void
atiixp_release_resource(struct atiixp_info *sc)
{
 if (sc == ((void*)0))
  return;
 if (sc->registered_channels != 0) {
  atiixp_lock(sc);
  sc->polling = 0;
  callout_stop(&sc->poll_timer);
  atiixp_unlock(sc);
  callout_drain(&sc->poll_timer);
 }
 if (sc->codec) {
  ac97_destroy(sc->codec);
  sc->codec = ((void*)0);
 }
 if (sc->ih) {
  bus_teardown_intr(sc->dev, sc->irq, sc->ih);
  sc->ih = ((void*)0);
 }
 if (sc->reg) {
  bus_release_resource(sc->dev, sc->regtype, sc->regid, sc->reg);
  sc->reg = ((void*)0);
 }
 if (sc->irq) {
  bus_release_resource(sc->dev, SYS_RES_IRQ, sc->irqid, sc->irq);
  sc->irq = ((void*)0);
 }
 if (sc->parent_dmat) {
  bus_dma_tag_destroy(sc->parent_dmat);
  sc->parent_dmat = ((void*)0);
 }
 if (sc->sgd_addr) {
  bus_dmamap_unload(sc->sgd_dmat, sc->sgd_dmamap);
  sc->sgd_addr = 0;
 }
 if (sc->sgd_table) {
  bus_dmamem_free(sc->sgd_dmat, sc->sgd_table, sc->sgd_dmamap);
  sc->sgd_table = ((void*)0);
 }
 if (sc->sgd_dmat) {
  bus_dma_tag_destroy(sc->sgd_dmat);
  sc->sgd_dmat = ((void*)0);
 }
 if (sc->lock) {
  snd_mtxfree(sc->lock);
  sc->lock = ((void*)0);
 }
 free(sc, M_DEVBUF);
}
