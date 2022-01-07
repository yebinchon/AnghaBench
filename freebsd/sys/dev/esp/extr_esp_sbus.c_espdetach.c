
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_irqres; int sc_dev; int sc_dma; int sc_irq; struct ncr53c9x_softc sc_ncr53c9x; } ;


 int NCR_LOCK_DESTROY (struct ncr53c9x_softc*) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int lsi64854_detach (int ) ;
 int ncr53c9x_detach (struct ncr53c9x_softc*) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
espdetach(struct esp_softc *esc)
{
 struct ncr53c9x_softc *sc = &esc->sc_ncr53c9x;
 int error;

 bus_teardown_intr(esc->sc_dev, esc->sc_irqres, esc->sc_irq);
 error = ncr53c9x_detach(sc);
 if (error != 0)
  return (error);
 error = lsi64854_detach(esc->sc_dma);
 if (error != 0)
  return (error);
 NCR_LOCK_DESTROY(sc);
 bus_release_resource(esc->sc_dev, SYS_RES_IRQ,
     rman_get_rid(esc->sc_irqres), esc->sc_irqres);

 return (0);
}
