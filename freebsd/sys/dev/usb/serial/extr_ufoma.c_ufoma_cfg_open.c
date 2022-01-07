
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufoma_softc {int sc_num_msg; scalar_t__ sc_currentmode; int sc_modetoactivate; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;


 scalar_t__ UMCPC_ACM_MODE_DEACTIVATED ;
 scalar_t__ UMCPC_ACM_MODE_UNLINKED ;
 int ufoma_cfg_activate_state (struct ufoma_softc*,int ) ;
 int ufoma_cfg_link_state (struct ufoma_softc*) ;

__attribute__((used)) static void
ufoma_cfg_open(struct ucom_softc *ucom)
{
 struct ufoma_softc *sc = ucom->sc_parent;



 if (sc->sc_num_msg != 0xFF) {
  sc->sc_num_msg++;
 }
 if (sc->sc_currentmode == UMCPC_ACM_MODE_UNLINKED) {
  ufoma_cfg_link_state(sc);
 }
 if (sc->sc_currentmode == UMCPC_ACM_MODE_DEACTIVATED) {
  ufoma_cfg_activate_state(sc, sc->sc_modetoactivate);
 }
}
