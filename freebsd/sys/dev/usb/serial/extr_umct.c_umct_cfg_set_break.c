
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct umct_softc {int sc_lcr; } ;
struct ucom_softc {struct umct_softc* sc_parent; } ;


 int UMCT_SET_LCR ;
 int UMCT_SET_LCR_SIZE ;
 int umct_cfg_do_request (struct umct_softc*,int ,int ,int) ;

__attribute__((used)) static void
umct_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct umct_softc *sc = ucom->sc_parent;

 if (onoff)
  sc->sc_lcr |= 0x40;
 else
  sc->sc_lcr &= ~0x40;

 umct_cfg_do_request(sc, UMCT_SET_LCR, UMCT_SET_LCR_SIZE, sc->sc_lcr);
}
