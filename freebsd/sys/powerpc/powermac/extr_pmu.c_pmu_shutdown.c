
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct pmu_softc {int dummy; } ;


 int PMU_POWER_OFF ;
 int PMU_RESET_CPU ;
 int RB_HALT ;
 int pmu_send (struct pmu_softc*,int ,int,char*,int ,int *) ;

__attribute__((used)) static void
pmu_shutdown(void *xsc, int howto)
{
 struct pmu_softc *sc = xsc;
 uint8_t cmd[] = {'M', 'A', 'T', 'T'};

 if (howto & RB_HALT)
  pmu_send(sc, PMU_POWER_OFF, 4, cmd, 0, ((void*)0));
 else
  pmu_send(sc, PMU_RESET_CPU, 0, ((void*)0), 0, ((void*)0));

 for (;;);
}
