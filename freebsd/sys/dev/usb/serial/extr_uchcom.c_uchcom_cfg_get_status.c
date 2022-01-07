
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int sc_msr; int sc_lsr; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
uchcom_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{
 struct uchcom_softc *sc = ucom->sc_parent;

 DPRINTF("\n");


 *lsr = sc->sc_lsr;
 *msr = sc->sc_msr;
}
