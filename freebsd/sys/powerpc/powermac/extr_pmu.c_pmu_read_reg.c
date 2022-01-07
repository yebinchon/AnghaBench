
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct pmu_softc {int sc_memr; } ;


 int bus_read_1 (int ,int ) ;

__attribute__((used)) static uint8_t
pmu_read_reg(struct pmu_softc *sc, u_int offset)
{
 return (bus_read_1(sc->sc_memr, offset));
}
