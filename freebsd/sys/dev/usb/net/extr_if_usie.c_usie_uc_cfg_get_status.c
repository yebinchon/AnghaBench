
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usie_softc {int sc_lsr; int sc_msr; } ;
struct ucom_softc {struct usie_softc* sc_parent; } ;



__attribute__((used)) static void
usie_uc_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{
 struct usie_softc *sc = ucom->sc_parent;

 *msr = sc->sc_msr;
 *lsr = sc->sc_lsr;
}
