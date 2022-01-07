
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {int dummy; } ;


 int pmu_read_reg (struct pmu_softc*,int ) ;
 int vBufB ;
 int vPB3 ;

__attribute__((used)) static int
pmu_intr_state(struct pmu_softc *sc)
{
 return ((pmu_read_reg(sc, vBufB) & vPB3) == 0);
}
