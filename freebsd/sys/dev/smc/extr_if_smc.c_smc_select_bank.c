
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smc_softc {int smc_reg; } ;


 int BSR ;
 int BSR_BANK_MASK ;
 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int ,int,int) ;
 int bus_write_2 (int ,int ,int) ;

__attribute__((used)) static __inline void
smc_select_bank(struct smc_softc *sc, uint16_t bank)
{

 bus_barrier(sc->smc_reg, BSR, 2,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 bus_write_2(sc->smc_reg, BSR, bank & BSR_BANK_MASK);
 bus_barrier(sc->smc_reg, BSR, 2,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
