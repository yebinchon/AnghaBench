
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rl_softc {int rl_cfg5; int rl_cfg3; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int IFCAP_WOL ;
 int RL_CFG3_WOL_LINK ;
 int RL_CFG3_WOL_MAGIC ;
 int RL_CFG5_WOL_BCAST ;
 int RL_CFG5_WOL_LANWAKE ;
 int RL_CFG5_WOL_MCAST ;
 int RL_CFG5_WOL_UCAST ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EE_MODE ;

__attribute__((used)) static void
rl_clrwol(struct rl_softc *sc)
{
 struct ifnet *ifp;
 uint8_t v;

 ifp = sc->rl_ifp;
 if ((ifp->if_capabilities & IFCAP_WOL) == 0)
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
