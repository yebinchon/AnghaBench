
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int dummy; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UBSA_REG_RTS ;
 int ubsa_cfg_request (struct ubsa_softc*,int ,int) ;

__attribute__((used)) static void
ubsa_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct ubsa_softc *sc = ucom->sc_parent;

 DPRINTF("onoff = %d\n", onoff);

 ubsa_cfg_request(sc, UBSA_REG_RTS, onoff ? 1 : 0);
}
