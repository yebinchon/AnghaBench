
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct rt2860_softc {int mac_ver; int mac_rev; int sc_dev; } ;
struct TYPE_3__ {int reg; int val; } ;


 int ETIMEDOUT ;
 int device_printf (int ,char*) ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* rt2860_def_bbp ;
 int rt2860_mcu_bbp_read (struct rt2860_softc*,int ) ;
 int rt2860_mcu_bbp_write (struct rt2860_softc*,int,int) ;
 int rt5390_bbp_init (struct rt2860_softc*) ;

__attribute__((used)) static int
rt2860_bbp_init(struct rt2860_softc *sc)
{
 int i, ntries;


 for (ntries = 0; ntries < 20; ntries++) {
  uint8_t bbp0 = rt2860_mcu_bbp_read(sc, 0);
  if (bbp0 != 0 && bbp0 != 0xff)
   break;
 }
 if (ntries == 20) {
  device_printf(sc->sc_dev,
      "timeout waiting for BBP to wake up\n");
  return (ETIMEDOUT);
 }


 if (sc->mac_ver >= 0x5390)
  rt5390_bbp_init(sc);
 else {
  for (i = 0; i < nitems(rt2860_def_bbp); i++) {
   rt2860_mcu_bbp_write(sc, rt2860_def_bbp[i].reg,
       rt2860_def_bbp[i].val);
  }
 }


 if (sc->mac_ver == 0x2860 && sc->mac_rev != 0x0101)
  rt2860_mcu_bbp_write(sc, 84, 0x19);

 if (sc->mac_ver >= 0x3071) {
  rt2860_mcu_bbp_write(sc, 79, 0x13);
  rt2860_mcu_bbp_write(sc, 80, 0x05);
  rt2860_mcu_bbp_write(sc, 81, 0x33);
 } else if (sc->mac_ver == 0x2860 && sc->mac_rev == 0x0100) {
  rt2860_mcu_bbp_write(sc, 69, 0x16);
  rt2860_mcu_bbp_write(sc, 73, 0x12);
 }

 return 0;
}
