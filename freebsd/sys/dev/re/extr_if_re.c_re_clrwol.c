
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rl_softc {int rl_cfg5; int rl_cfg3; int rl_dev; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int PCIY_PMG ;
 int RL_CFG3_WOL_LINK ;
 int RL_CFG3_WOL_MAGIC ;
 int RL_CFG5_WOL_BCAST ;
 int RL_CFG5_WOL_LANWAKE ;
 int RL_CFG5_WOL_MCAST ;
 int RL_CFG5_WOL_UCAST ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EE_MODE ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;

__attribute__((used)) static void
re_clrwol(struct rl_softc *sc)
{
 int pmc;
 uint8_t v;

 RL_LOCK_ASSERT(sc);

 if (pci_find_cap(sc->rl_dev, PCIY_PMG, &pmc) != 0)
  return;


 CSR_WRITE_1(sc, RL_EECMD, RL_EE_MODE);

 v = CSR_READ_1(sc, sc->rl_cfg3);
 v &= ~(RL_CFG3_WOL_LINK | RL_CFG3_WOL_MAGIC);
 CSR_WRITE_1(sc, sc->rl_cfg3, v);


 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_OFF);

 v = CSR_READ_1(sc, sc->rl_cfg5);
 v &= ~(RL_CFG5_WOL_BCAST | RL_CFG5_WOL_MCAST | RL_CFG5_WOL_UCAST);
 v &= ~RL_CFG5_WOL_LANWAKE;
 CSR_WRITE_1(sc, sc->rl_cfg5, v);
}
