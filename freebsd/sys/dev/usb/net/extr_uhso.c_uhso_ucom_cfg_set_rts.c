
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uhso_softc {int sc_line; int sc_type; } ;
struct ucom_softc {struct uhso_softc* sc_parent; } ;


 int UCDC_LINE_RTS ;
 int UHSO_IFACE_USB_TYPE (int ) ;
 int UHSO_IF_BULK ;
 int uhso_bs_cfg (struct uhso_softc*) ;

__attribute__((used)) static void
uhso_ucom_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uhso_softc *sc = ucom->sc_parent;

 if (!(UHSO_IFACE_USB_TYPE(sc->sc_type) & UHSO_IF_BULK))
  return;

 if (onoff)
  sc->sc_line |= UCDC_LINE_RTS;
 else
  sc->sc_line &= ~UCDC_LINE_RTS;

 uhso_bs_cfg(sc);
}
