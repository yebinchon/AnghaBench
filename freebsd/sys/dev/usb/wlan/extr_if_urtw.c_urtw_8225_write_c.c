
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct urtw_softc {int sc_mtx; } ;


 int DELAY (int) ;
 int URTW_BB_HOST_BANG_EN ;
 int URTW_RF_PINS_ENABLE ;
 int URTW_RF_PINS_MAGIC1 ;
 int URTW_RF_PINS_MAGIC2 ;
 int URTW_RF_PINS_MAGIC3 ;
 int URTW_RF_PINS_OUTPUT ;
 int URTW_RF_PINS_SELECT ;
 scalar_t__ urtw_8225_write_s16 (struct urtw_softc*,int ,int,int*) ;
 int urtw_read16_m (struct urtw_softc*,int ,int*) ;
 int urtw_write16_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225_write_c(struct urtw_softc *sc, uint8_t addr, uint16_t data)
{
 uint16_t d80, d82, d84;
 usb_error_t error;

 urtw_read16_m(sc, URTW_RF_PINS_OUTPUT, &d80);
 d80 &= URTW_RF_PINS_MAGIC1;
 urtw_read16_m(sc, URTW_RF_PINS_ENABLE, &d82);
 urtw_read16_m(sc, URTW_RF_PINS_SELECT, &d84);
 d84 &= URTW_RF_PINS_MAGIC2;
 urtw_write16_m(sc, URTW_RF_PINS_ENABLE, d82 | URTW_RF_PINS_MAGIC3);
 urtw_write16_m(sc, URTW_RF_PINS_SELECT, d84 | URTW_RF_PINS_MAGIC3);
 DELAY(10);

 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, d80 | URTW_BB_HOST_BANG_EN);
 DELAY(2);
 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, d80);
 DELAY(10);

 error = urtw_8225_write_s16(sc, addr, 0x8225, &data);
 if (error != 0)
  goto fail;

 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, d80 | URTW_BB_HOST_BANG_EN);
 DELAY(10);
 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, d80 | URTW_BB_HOST_BANG_EN);
 urtw_write16_m(sc, URTW_RF_PINS_SELECT, d84);
 usb_pause_mtx(&sc->sc_mtx, 2);
fail:
 return (error);
}
