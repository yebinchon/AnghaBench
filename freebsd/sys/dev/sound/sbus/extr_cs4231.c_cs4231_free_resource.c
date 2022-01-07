
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_nires; int sc_nmres; int sc_lock; int ** sc_res; int * sc_rid; int sc_dev; scalar_t__* sc_dmat; int ** sc_irqres; int * sc_irqrid; int ** sc_ih; } ;


 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int cs4231_disable (struct cs4231_softc*) ;
 int free (struct cs4231_softc*,int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static void
cs4231_free_resource(struct cs4231_softc *sc)
{
 int i;

 CS4231_LOCK(sc);
 cs4231_disable(sc);
 CS4231_UNLOCK(sc);
 for (i = 0; i < sc->sc_nires; i++) {
  if (sc->sc_irqres[i]) {
   if (sc->sc_ih[i]) {
    bus_teardown_intr(sc->sc_dev, sc->sc_irqres[i],
        sc->sc_ih[i]);
    sc->sc_ih[i] = ((void*)0);
   }
   bus_release_resource(sc->sc_dev, SYS_RES_IRQ,
       sc->sc_irqrid[i], sc->sc_irqres[i]);
   sc->sc_irqres[i] = ((void*)0);
  }
 }
 for (i = 0; i < sc->sc_nires; i++) {
  if (sc->sc_dmat[i])
   bus_dma_tag_destroy(sc->sc_dmat[i]);
 }
 for (i = 0; i < sc->sc_nmres; i++) {
  if (sc->sc_res[i])
   bus_release_resource(sc->sc_dev, SYS_RES_MEMORY,
       sc->sc_rid[i], sc->sc_res[i]);
 }
 snd_mtxfree(sc->sc_lock);
 free(sc, M_DEVBUF);
}
