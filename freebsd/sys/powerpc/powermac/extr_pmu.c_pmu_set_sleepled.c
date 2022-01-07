
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int sc_mutex; } ;


 int PMU_SET_SLEEPLED ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_send (struct pmu_softc*,int ,int,int*,int ,int *) ;

__attribute__((used)) static void
pmu_set_sleepled(void *xsc, int onoff)
{
 struct pmu_softc *sc = xsc;
 uint8_t cmd[] = {4, 0, 0};

 cmd[2] = onoff;

 mtx_lock(&sc->sc_mutex);
 pmu_send(sc, PMU_SET_SLEEPLED, 3, cmd, 0, ((void*)0));
 mtx_unlock(&sc->sc_mutex);
}
