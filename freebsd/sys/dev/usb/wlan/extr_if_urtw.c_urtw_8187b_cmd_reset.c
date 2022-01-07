
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_dev; int sc_mtx; } ;


 int URTW_CMD ;
 int URTW_CMD_RST ;
 int device_printf (int ,char*) ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8187b_cmd_reset(struct urtw_softc *sc)
{
 int i;
 uint8_t data8;
 usb_error_t error;


 urtw_read8_m(sc, URTW_CMD, &data8);
 data8 = (data8 & 0x2) | URTW_CMD_RST;
 urtw_write8_m(sc, URTW_CMD, data8);

 for (i = 0; i < 20; i++) {
  usb_pause_mtx(&sc->sc_mtx, 2);
  urtw_read8_m(sc, URTW_CMD, &data8);
  if (!(data8 & URTW_CMD_RST))
   break;
 }
 if (i >= 20) {
  device_printf(sc->sc_dev, "reset timeout\n");
  goto fail;
 }
fail:
 return (error);
}
