
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ural_softc {TYPE_1__* bbp_prom; int sc_dev; } ;
struct TYPE_5__ {int reg; int val; } ;
struct TYPE_4__ {int reg; int val; } ;


 int EIO ;
 int RAL_BBP_VERSION ;
 int device_printf (int ,char*) ;
 int hz ;
 int nitems (TYPE_2__*) ;
 scalar_t__ ural_bbp_read (struct ural_softc*,int ) ;
 int ural_bbp_write (struct ural_softc*,int,int ) ;
 TYPE_2__* ural_def_bbp ;
 scalar_t__ ural_pause (struct ural_softc*,int) ;

__attribute__((used)) static int
ural_bbp_init(struct ural_softc *sc)
{
 int i, ntries;


 for (ntries = 0; ntries < 100; ntries++) {
  if (ural_bbp_read(sc, RAL_BBP_VERSION) != 0)
   break;
  if (ural_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "timeout waiting for BBP\n");
  return EIO;
 }


 for (i = 0; i < nitems(ural_def_bbp); i++)
  ural_bbp_write(sc, ural_def_bbp[i].reg, ural_def_bbp[i].val);
 return 0;
}
