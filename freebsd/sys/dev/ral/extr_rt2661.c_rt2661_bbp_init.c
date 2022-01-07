
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct rt2661_softc {TYPE_1__* bbp_prom; int sc_dev; } ;
struct TYPE_5__ {scalar_t__ reg; int val; } ;
struct TYPE_4__ {scalar_t__ reg; int val; } ;


 int DELAY (int) ;
 int EIO ;
 int device_printf (int ,char*) ;
 int nitems (TYPE_2__*) ;
 int rt2661_bbp_read (struct rt2661_softc*,int ) ;
 int rt2661_bbp_write (struct rt2661_softc*,scalar_t__,int ) ;
 TYPE_2__* rt2661_def_bbp ;

__attribute__((used)) static int
rt2661_bbp_init(struct rt2661_softc *sc)
{
 int i, ntries;
 uint8_t val;


 for (ntries = 0; ntries < 100; ntries++) {
  val = rt2661_bbp_read(sc, 0);
  if (val != 0 && val != 0xff)
   break;
  DELAY(100);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "timeout waiting for BBP\n");
  return EIO;
 }


 for (i = 0; i < nitems(rt2661_def_bbp); i++) {
  rt2661_bbp_write(sc, rt2661_def_bbp[i].reg,
      rt2661_def_bbp[i].val);
 }


 for (i = 0; i < 16; i++) {
  if (sc->bbp_prom[i].reg == 0)
   continue;
  rt2661_bbp_write(sc, sc->bbp_prom[i].reg, sc->bbp_prom[i].val);
 }

 return 0;
}
