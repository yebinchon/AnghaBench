
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_reg; } ;
typedef int bus_size_t ;


 int bus_barrier (int ,int ,int ,int) ;

__attribute__((used)) static __inline void
smc_barrier(struct smc_softc *sc, bus_size_t offset, bus_size_t length,
    int flags)
{

 bus_barrier(sc->smc_reg, offset, length, flags);
}
