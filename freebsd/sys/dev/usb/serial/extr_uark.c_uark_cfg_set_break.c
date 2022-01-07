
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {struct uark_softc* sc_parent; } ;
struct uark_softc {int dummy; } ;


 int DPRINTF (char*,scalar_t__) ;
 int uark_cfg_write (struct uark_softc*,int,int) ;

__attribute__((used)) static void
uark_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uark_softc *sc = ucom->sc_parent;

 DPRINTF("onoff=%d\n", onoff);

 uark_cfg_write(sc, 4, onoff ? 0x01 : 0x00);
}
