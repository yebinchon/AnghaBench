
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_flags; int * sc_xfer; } ;


 size_t URTW_8187B_BULK_RX ;
 size_t URTW_8187L_BULK_RX ;
 int URTW_CMD ;
 int URTW_CMD_RX_ENABLE ;
 int URTW_RTL8187B ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 scalar_t__ urtw_rx_setconf (struct urtw_softc*) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static usb_error_t
urtw_rx_enable(struct urtw_softc *sc)
{
 uint8_t data;
 usb_error_t error;

 usbd_transfer_start((sc->sc_flags & URTW_RTL8187B) ?
     sc->sc_xfer[URTW_8187B_BULK_RX] : sc->sc_xfer[URTW_8187L_BULK_RX]);

 error = urtw_rx_setconf(sc);
 if (error != 0)
  goto fail;

 if ((sc->sc_flags & URTW_RTL8187B) == 0) {
  urtw_read8_m(sc, URTW_CMD, &data);
  urtw_write8_m(sc, URTW_CMD, data | URTW_CMD_RX_ENABLE);
 }
fail:
 return (error);
}
