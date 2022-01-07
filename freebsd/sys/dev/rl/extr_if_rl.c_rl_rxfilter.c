
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rl_softc {struct ifnet* rl_ifp; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_4 (struct rl_softc*,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_MAR0 ;
 int RL_MAR4 ;
 int RL_RXCFG ;
 int RL_RXCFG_RX_ALLPHYS ;
 int RL_RXCFG_RX_BROAD ;
 int RL_RXCFG_RX_INDIV ;
 int RL_RXCFG_RX_MULTI ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int rl_hash_maddr ;

__attribute__((used)) static void
rl_rxfilter(struct rl_softc *sc)
{
 struct ifnet *ifp = sc->rl_ifp;
 uint32_t hashes[2] = { 0, 0 };
 uint32_t rxfilt;

 RL_LOCK_ASSERT(sc);

 rxfilt = CSR_READ_4(sc, RL_RXCFG);
 rxfilt &= ~(RL_RXCFG_RX_ALLPHYS | RL_RXCFG_RX_BROAD |
     RL_RXCFG_RX_MULTI);

 rxfilt |= RL_RXCFG_RX_INDIV;

 if (ifp->if_flags & IFF_BROADCAST)
  rxfilt |= RL_RXCFG_RX_BROAD;
 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  rxfilt |= RL_RXCFG_RX_MULTI;
  if (ifp->if_flags & IFF_PROMISC)
   rxfilt |= RL_RXCFG_RX_ALLPHYS;
  hashes[0] = 0xFFFFFFFF;
  hashes[1] = 0xFFFFFFFF;
 } else {

  if_foreach_llmaddr(ifp, rl_hash_maddr, hashes);
  if (hashes[0] != 0 || hashes[1] != 0)
   rxfilt |= RL_RXCFG_RX_MULTI;
 }

 CSR_WRITE_4(sc, RL_MAR0, hashes[0]);
 CSR_WRITE_4(sc, RL_MAR4, hashes[1]);
 CSR_WRITE_4(sc, RL_RXCFG, rxfilt);
}
