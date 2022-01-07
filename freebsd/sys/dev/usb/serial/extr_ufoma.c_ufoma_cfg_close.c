
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufoma_softc {int dummy; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;


 int UMCPC_ACM_MODE_DEACTIVATED ;
 int ufoma_cfg_activate_state (struct ufoma_softc*,int ) ;

__attribute__((used)) static void
ufoma_cfg_close(struct ucom_softc *ucom)
{
 struct ufoma_softc *sc = ucom->sc_parent;

 ufoma_cfg_activate_state(sc, UMCPC_ACM_MODE_DEACTIVATED);
}
