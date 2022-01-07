
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smc_softc {int smc_reg; } ;
typedef int bus_size_t ;


 int bus_write_multi_2 (int ,int ,int *,int ) ;

__attribute__((used)) static __inline void
smc_write_multi_2(struct smc_softc *sc, bus_size_t offset, uint16_t *datap,
    bus_size_t count)
{

 bus_write_multi_2(sc->smc_reg, offset, datap, count);
}
