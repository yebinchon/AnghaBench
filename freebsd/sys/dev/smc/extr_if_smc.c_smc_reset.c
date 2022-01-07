
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct smc_softc {int dummy; } ;


 int CR ;
 int CR_EPH_POWER_EN ;
 int CTR ;
 int CTR_AUTO_RELEASE ;
 int CTR_LE_ENABLE ;
 int DELAY (int) ;
 int MMUCR ;
 int MMUCR_CMD_MMU_RESET ;
 int MSK ;
 int RCR ;
 int RCR_SOFT_RST ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int TCR ;
 int smc_mmu_wait (struct smc_softc*) ;
 int smc_read_2 (struct smc_softc*,int ) ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int ) ;
 int smc_write_2 (struct smc_softc*,int ,int) ;

__attribute__((used)) static void
smc_reset(struct smc_softc *sc)
{
 u_int ctr;

 SMC_ASSERT_LOCKED(sc);

 smc_select_bank(sc, 2);




 smc_write_1(sc, MSK, 0);




 smc_select_bank(sc, 0);
 smc_write_2(sc, RCR, RCR_SOFT_RST);




 smc_select_bank(sc, 1);
 smc_write_2(sc, CR, CR_EPH_POWER_EN);
 DELAY(1);




 smc_select_bank(sc, 0);
 smc_write_2(sc, TCR, 0);
 smc_write_2(sc, RCR, 0);




 smc_select_bank(sc, 1);
 ctr = smc_read_2(sc, CTR);
 ctr |= CTR_LE_ENABLE | CTR_AUTO_RELEASE;
 smc_write_2(sc, CTR, ctr);




 smc_select_bank(sc, 2);
 smc_mmu_wait(sc);
 smc_write_2(sc, MMUCR, MMUCR_CMD_MMU_RESET);
}
