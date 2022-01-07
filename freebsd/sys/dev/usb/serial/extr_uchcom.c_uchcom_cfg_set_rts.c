
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int sc_rts; } ;


 int DPRINTF (char*,int ) ;
 int uchcom_set_dtr_rts (struct uchcom_softc*) ;

__attribute__((used)) static void
uchcom_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uchcom_softc *sc = ucom->sc_parent;

 DPRINTF("onoff = %d\n", onoff);

 sc->sc_rts = onoff;
 uchcom_set_dtr_rts(sc);
}
