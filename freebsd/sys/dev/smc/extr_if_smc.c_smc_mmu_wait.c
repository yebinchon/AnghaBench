
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_reg; int smc_dev; } ;


 int BSR ;
 int BSR_BANK_MASK ;
 int KASSERT (int,char*) ;
 int MMUCR ;
 int MMUCR_BUSY ;
 int bus_read_2 (int ,int ) ;
 int device_get_nameunit (int ) ;

__attribute__((used)) static __inline void
smc_mmu_wait(struct smc_softc *sc)
{

 KASSERT((bus_read_2(sc->smc_reg, BSR) &
     BSR_BANK_MASK) == 2, ("%s: smc_mmu_wait called when not in bank 2",
     device_get_nameunit(sc->smc_dev)));
 while (bus_read_2(sc->smc_reg, MMUCR) & MMUCR_BUSY)
  ;
}
