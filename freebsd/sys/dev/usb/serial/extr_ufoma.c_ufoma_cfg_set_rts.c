
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ufoma_softc {int sc_line; scalar_t__ sc_nobulk; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;


 int UCDC_LINE_RTS ;
 int ufoma_cfg_set_line_state (struct ufoma_softc*) ;

__attribute__((used)) static void
ufoma_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct ufoma_softc *sc = ucom->sc_parent;

 if (sc->sc_nobulk) {
  return;
 }
 if (onoff)
  sc->sc_line |= UCDC_LINE_RTS;
 else
  sc->sc_line &= ~UCDC_LINE_RTS;

 ufoma_cfg_set_line_state(sc);
}
