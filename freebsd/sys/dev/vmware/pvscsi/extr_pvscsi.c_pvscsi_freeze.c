
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int frozen; int sim; } ;


 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
pvscsi_freeze(struct pvscsi_softc *sc)
{

 if (!sc->frozen) {
  xpt_freeze_simq(sc->sim, 1);
  sc->frozen = 1;
 }
}
