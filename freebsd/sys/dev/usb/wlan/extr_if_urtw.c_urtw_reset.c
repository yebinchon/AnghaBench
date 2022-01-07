
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_mtx; int sc_dev; } ;


 int URTW_8225_ANAPARAM2_ON ;
 int URTW_8225_ANAPARAM_ON ;
 int URTW_CMD ;
 int URTW_CMD_RST ;
 int URTW_EPROM_CMD_LOAD ;
 int device_printf (int ,char*) ;
 scalar_t__ urtw_8180_set_anaparam (struct urtw_softc*,int ) ;
 scalar_t__ urtw_8185_set_anaparam2 (struct urtw_softc*,int ) ;
 scalar_t__ urtw_intr_disable (struct urtw_softc*) ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 scalar_t__ urtw_set_mode (struct urtw_softc*,int ) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 scalar_t__ urtw_write8e (struct urtw_softc*,int,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_reset(struct urtw_softc *sc)
{
 uint8_t data;
 usb_error_t error;

 error = urtw_8180_set_anaparam(sc, URTW_8225_ANAPARAM_ON);
 if (error)
  goto fail;
 error = urtw_8185_set_anaparam2(sc, URTW_8225_ANAPARAM2_ON);
 if (error)
  goto fail;

 error = urtw_intr_disable(sc);
 if (error)
  goto fail;
 usb_pause_mtx(&sc->sc_mtx, 100);

 error = urtw_write8e(sc, 0x18, 0x10);
 if (error != 0)
  goto fail;
 error = urtw_write8e(sc, 0x18, 0x11);
 if (error != 0)
  goto fail;
 error = urtw_write8e(sc, 0x18, 0x00);
 if (error != 0)
  goto fail;
 usb_pause_mtx(&sc->sc_mtx, 100);

 urtw_read8_m(sc, URTW_CMD, &data);
 data = (data & 0x2) | URTW_CMD_RST;
 urtw_write8_m(sc, URTW_CMD, data);
 usb_pause_mtx(&sc->sc_mtx, 100);

 urtw_read8_m(sc, URTW_CMD, &data);
 if (data & URTW_CMD_RST) {
  device_printf(sc->sc_dev, "reset timeout\n");
  goto fail;
 }

 error = urtw_set_mode(sc, URTW_EPROM_CMD_LOAD);
 if (error)
  goto fail;
 usb_pause_mtx(&sc->sc_mtx, 100);

 error = urtw_8180_set_anaparam(sc, URTW_8225_ANAPARAM_ON);
 if (error)
  goto fail;
 error = urtw_8185_set_anaparam2(sc, URTW_8225_ANAPARAM2_ON);
 if (error)
  goto fail;
fail:
 return (error);
}
