
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int sc_flags; int * sc_xfer; } ;


 int MA_OWNED ;
 size_t ZYD_BULK_RD ;
 size_t ZYD_BULK_WR ;
 int ZYD_CR_INTERRUPT ;
 int ZYD_FLAG_INITONCE ;
 int ZYD_FLAG_RUNNING ;
 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_LOCK_ASSERT (struct zyd_softc*,int ) ;
 int ZYD_MAC_RXFILTER ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 int usbd_transfer_drain (int ) ;
 int zyd_drain_mbufq (struct zyd_softc*) ;
 int zyd_switch_radio (struct zyd_softc*,int ) ;
 int zyd_unsetup_tx_list (struct zyd_softc*) ;
 int zyd_write32_m (struct zyd_softc*,int ,int ) ;

__attribute__((used)) static void
zyd_stop(struct zyd_softc *sc)
{
 int error;

 ZYD_LOCK_ASSERT(sc, MA_OWNED);

 sc->sc_flags &= ~ZYD_FLAG_RUNNING;
 zyd_drain_mbufq(sc);




 ZYD_UNLOCK(sc);
 usbd_transfer_drain(sc->sc_xfer[ZYD_BULK_WR]);
 usbd_transfer_drain(sc->sc_xfer[ZYD_BULK_RD]);
 ZYD_LOCK(sc);

 zyd_unsetup_tx_list(sc);


 if (!(sc->sc_flags & ZYD_FLAG_INITONCE))
  return;


 error = zyd_switch_radio(sc, 0);
 if (error != 0)
  goto fail;

 zyd_write32_m(sc, ZYD_MAC_RXFILTER, 0);

 zyd_write32_m(sc, ZYD_CR_INTERRUPT, 0);

fail:
 return;
}
