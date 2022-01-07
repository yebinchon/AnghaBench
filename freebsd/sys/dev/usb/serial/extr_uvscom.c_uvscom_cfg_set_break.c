
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uvscom_softc {int sc_line; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UVSCOM_BREAK ;
 int UVSCOM_LINE_CTL ;
 int uvscom_cfg_write (struct uvscom_softc*,int ,int ) ;

__attribute__((used)) static void
uvscom_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uvscom_softc *sc = ucom->sc_parent;

 DPRINTF("onoff = %d\n", onoff);

 if (onoff)
  sc->sc_line |= UVSCOM_BREAK;
 else
  sc->sc_line &= ~UVSCOM_BREAK;

 uvscom_cfg_write(sc, UVSCOM_LINE_CTL, sc->sc_line);
}
