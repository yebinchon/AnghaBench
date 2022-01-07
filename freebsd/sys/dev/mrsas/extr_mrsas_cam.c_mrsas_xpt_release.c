
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int sim_1; int sim_0; } ;


 int xpt_release_simq (int ,int) ;

void
mrsas_xpt_release(struct mrsas_softc *sc)
{
 xpt_release_simq(sc->sim_0, 1);
 xpt_release_simq(sc->sim_1, 1);
}
