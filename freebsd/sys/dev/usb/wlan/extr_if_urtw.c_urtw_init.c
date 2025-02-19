
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct urtw_softc {int sc_flags; int sc_watchdog_ch; int * sc_xfer; scalar_t__ sc_txtimer; } ;


 size_t URTW_8187B_BULK_TX_STATUS ;
 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int URTW_INIT_ONCE ;
 int URTW_RTL8187B ;
 int URTW_RUNNING ;
 int callout_reset (int *,int ,int ,struct urtw_softc*) ;
 int hz ;
 scalar_t__ urtw_adapter_start (struct urtw_softc*) ;
 scalar_t__ urtw_adapter_start_b (struct urtw_softc*) ;
 int urtw_alloc_rx_data_list (struct urtw_softc*) ;
 int urtw_alloc_tx_data_list (struct urtw_softc*) ;
 scalar_t__ urtw_rx_enable (struct urtw_softc*) ;
 int urtw_stop (struct urtw_softc*) ;
 scalar_t__ urtw_tx_enable (struct urtw_softc*) ;
 int urtw_watchdog ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
urtw_init(struct urtw_softc *sc)
{
 usb_error_t error;
 int ret;

 URTW_ASSERT_LOCKED(sc);

 if (sc->sc_flags & URTW_RUNNING)
  urtw_stop(sc);

 error = (sc->sc_flags & URTW_RTL8187B) ? urtw_adapter_start_b(sc) :
     urtw_adapter_start(sc);
 if (error != 0)
  goto fail;


 sc->sc_txtimer = 0;

 if (!(sc->sc_flags & URTW_INIT_ONCE)) {
  ret = urtw_alloc_rx_data_list(sc);
  if (ret != 0)
   goto fail;
  ret = urtw_alloc_tx_data_list(sc);
  if (ret != 0)
   goto fail;
  sc->sc_flags |= URTW_INIT_ONCE;
 }

 error = urtw_rx_enable(sc);
 if (error != 0)
  goto fail;
 error = urtw_tx_enable(sc);
 if (error != 0)
  goto fail;

 if (sc->sc_flags & URTW_RTL8187B)
  usbd_transfer_start(sc->sc_xfer[URTW_8187B_BULK_TX_STATUS]);

 sc->sc_flags |= URTW_RUNNING;

 callout_reset(&sc->sc_watchdog_ch, hz, urtw_watchdog, sc);
fail:
 return;
}
