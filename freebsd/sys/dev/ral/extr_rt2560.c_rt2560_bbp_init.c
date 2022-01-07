
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rt2560_softc {TYPE_1__* bbp_prom; int sc_dev; } ;
struct TYPE_5__ {int reg; int val; } ;
struct TYPE_4__ {scalar_t__ reg; scalar_t__ val; } ;


 int DELAY (int) ;
 int EIO ;
 int RT2560_BBP_VERSION ;
 int device_printf (int ,char*) ;
 int nitems (TYPE_2__*) ;
 scalar_t__ rt2560_bbp_read (struct rt2560_softc*,int ) ;
 int rt2560_bbp_write (struct rt2560_softc*,int,int) ;
 TYPE_2__* rt2560_def_bbp ;

__attribute__((used)) static int
rt2560_bbp_init(struct rt2560_softc *sc)
{
 int i, ntries;


 for (ntries = 0; ntries < 100; ntries++) {
  if (rt2560_bbp_read(sc, RT2560_BBP_VERSION) != 0)
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "timeout waiting for BBP\n");
  return EIO;
 }


 for (i = 0; i < nitems(rt2560_def_bbp); i++) {
  rt2560_bbp_write(sc, rt2560_def_bbp[i].reg,
      rt2560_def_bbp[i].val);
 }


 for (i = 0; i < 16; i++) {
  if (sc->bbp_prom[i].reg == 0 && sc->bbp_prom[i].val == 0)
   break;
  rt2560_bbp_write(sc, sc->bbp_prom[i].reg, sc->bbp_prom[i].val);
 }
 rt2560_bbp_write(sc, 17, 0x48);

 return 0;
}
