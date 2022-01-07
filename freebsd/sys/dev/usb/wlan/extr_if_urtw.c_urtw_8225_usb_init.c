
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_mtx; } ;


 scalar_t__ URTW_GPIO ;
 scalar_t__ URTW_GP_ENABLE ;
 scalar_t__ URTW_RF_PINS_ENABLE ;
 scalar_t__ URTW_RF_PINS_OUTPUT ;
 scalar_t__ URTW_RF_PINS_SELECT ;
 scalar_t__ urtw_read8e (struct urtw_softc*,int,int*) ;
 int urtw_write16_m (struct urtw_softc*,scalar_t__,int) ;
 int urtw_write8_m (struct urtw_softc*,scalar_t__,int) ;
 scalar_t__ urtw_write8e (struct urtw_softc*,int,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225_usb_init(struct urtw_softc *sc)
{
 uint8_t data;
 usb_error_t error;

 urtw_write8_m(sc, URTW_RF_PINS_SELECT + 1, 0);
 urtw_write8_m(sc, URTW_GPIO, 0);
 error = urtw_read8e(sc, 0x53, &data);
 if (error)
  goto fail;
 error = urtw_write8e(sc, 0x53, data | (1 << 7));
 if (error)
  goto fail;
 urtw_write8_m(sc, URTW_RF_PINS_SELECT + 1, 4);
 urtw_write8_m(sc, URTW_GPIO, 0x20);
 urtw_write8_m(sc, URTW_GP_ENABLE, 0);

 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, 0x80);
 urtw_write16_m(sc, URTW_RF_PINS_SELECT, 0x80);
 urtw_write16_m(sc, URTW_RF_PINS_ENABLE, 0x80);

 usb_pause_mtx(&sc->sc_mtx, 500);
fail:
 return (error);
}
