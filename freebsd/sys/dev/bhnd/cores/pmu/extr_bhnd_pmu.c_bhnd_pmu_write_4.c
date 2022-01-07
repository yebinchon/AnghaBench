
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int res; } ;
typedef int bus_size_t ;


 void bhnd_bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
bhnd_pmu_write_4(bus_size_t reg, uint32_t val, void *ctx)
{
 struct bhnd_pmu_softc *sc = ctx;
 return (bhnd_bus_write_4(sc->res, reg, val));
}
