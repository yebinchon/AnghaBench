
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int res; } ;
typedef int bus_size_t ;


 int bhnd_bus_read_4 (int ,int ) ;

__attribute__((used)) static uint32_t
bhnd_pmu_read_4(bus_size_t reg, void *ctx)
{
 struct bhnd_pmu_softc *sc = ctx;
 return (bhnd_bus_read_4(sc->res, reg));
}
