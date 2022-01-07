
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_invalid; scalar_t__ sc_eepromdata; int sc_dmat; } ;
struct ath_ahb_softc {int sc_sr; int sc_irq; int sc_ih; struct ath_softc sc_sc; } ;
typedef int device_t ;


 int ATH_LOCK_DESTROY (struct ath_softc*) ;
 int ATH_PCU_LOCK_DESTROY (struct ath_softc*) ;
 int ATH_RX_LOCK_DESTROY (struct ath_softc*) ;
 int ATH_TXSTATUS_LOCK_DESTROY (struct ath_softc*) ;
 int ATH_TX_LOCK_DESTROY (struct ath_softc*) ;
 int M_TEMP ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ath_detach (struct ath_softc*) ;
 int bus_child_present (int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct ath_ahb_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;

__attribute__((used)) static int
ath_ahb_detach(device_t dev)
{
 struct ath_ahb_softc *psc = device_get_softc(dev);
 struct ath_softc *sc = &psc->sc_sc;


 sc->sc_invalid = !bus_child_present(dev);

 ath_detach(sc);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, psc->sc_irq, psc->sc_ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, psc->sc_irq);

 bus_dma_tag_destroy(sc->sc_dmat);
 bus_release_resource(dev, SYS_RES_MEMORY, 0, psc->sc_sr);

 if (sc->sc_eepromdata)
  free(sc->sc_eepromdata, M_TEMP);

 ATH_TXSTATUS_LOCK_DESTROY(sc);
 ATH_RX_LOCK_DESTROY(sc);
 ATH_TX_LOCK_DESTROY(sc);
 ATH_PCU_LOCK_DESTROY(sc);
 ATH_LOCK_DESTROY(sc);

 return (0);
}
