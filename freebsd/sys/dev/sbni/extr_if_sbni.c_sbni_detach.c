
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int ifp; int lock; scalar_t__ irq_handle; int irq_res; int dev; int wch; } ;


 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int callout_drain (int *) ;
 int ether_ifdetach (int ) ;
 int if_free (int ) ;
 int mtx_destroy (int *) ;
 int sbni_stop (struct sbni_softc*) ;

void
sbni_detach(struct sbni_softc *sc)
{

 SBNI_LOCK(sc);
 sbni_stop(sc);
 SBNI_UNLOCK(sc);
 callout_drain(&sc->wch);
 ether_ifdetach(sc->ifp);
 if (sc->irq_handle)
  bus_teardown_intr(sc->dev, sc->irq_res, sc->irq_handle);
 mtx_destroy(&sc->lock);
 if_free(sc->ifp);
}
