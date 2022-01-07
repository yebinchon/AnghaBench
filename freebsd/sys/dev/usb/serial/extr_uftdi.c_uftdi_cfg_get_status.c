
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uftdi_softc {int sc_lsr; int sc_msr; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*,int ,int ) ;

__attribute__((used)) static void
uftdi_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{
 struct uftdi_softc *sc = ucom->sc_parent;

 DPRINTFN(3, "msr=0x%02x lsr=0x%02x\n", sc->sc_msr, sc->sc_lsr);

 *msr = sc->sc_msr;
 *lsr = sc->sc_lsr;
}
