
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_PM_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int PM_CFG_ASPM_L0S_ENB ;
 int PM_CFG_ASPM_L1_ENB ;
 int PM_CFG_CLK_SWH_L1 ;
 int PM_CFG_L1_ENTRY_TIMER_MASK ;
 int PM_CFG_MAC_ASPM_CHK ;
 int PM_CFG_SERDES_BUDS_RX_L1_ENB ;
 int PM_CFG_SERDES_L1_ENB ;
 int PM_CFG_SERDES_PD_EX_L1 ;
 int PM_CFG_SERDES_PLL_L1_ENB ;

__attribute__((used)) static void
alc_disable_l0s_l1(struct alc_softc *sc)
{
 uint32_t pmcfg;

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {

  pmcfg = CSR_READ_4(sc, ALC_PM_CFG);
  pmcfg &= ~(PM_CFG_L1_ENTRY_TIMER_MASK | PM_CFG_CLK_SWH_L1 |
      PM_CFG_ASPM_L0S_ENB | PM_CFG_ASPM_L1_ENB |
      PM_CFG_MAC_ASPM_CHK | PM_CFG_SERDES_PD_EX_L1);
  pmcfg |= PM_CFG_SERDES_BUDS_RX_L1_ENB |
      PM_CFG_SERDES_PLL_L1_ENB | PM_CFG_SERDES_L1_ENB;
  CSR_WRITE_4(sc, ALC_PM_CFG, pmcfg);
 }
}
