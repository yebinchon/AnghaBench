
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rl_softc {int rl_flags; TYPE_1__* rl_hwrev; struct ifnet* rl_ifp; } ;
struct ifnet {int if_flags; } ;
struct TYPE_2__ {scalar_t__ rl_rev; } ;


 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RL_FLAG_8168G_PLUS ;
 int RL_FLAG_EARLYOFF ;
 int RL_FLAG_PCIE ;
 scalar_t__ RL_HWREV_8168F ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_MAR0 ;
 int RL_MAR4 ;
 int RL_RXCFG ;
 int RL_RXCFG_CONFIG ;
 int RL_RXCFG_EARLYOFF ;
 int RL_RXCFG_EARLYOFFV2 ;
 int RL_RXCFG_RX_ALLPHYS ;
 int RL_RXCFG_RX_BROAD ;
 int RL_RXCFG_RX_INDIV ;
 int RL_RXCFG_RX_MULTI ;
 int bswap32 (int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int re_hash_maddr ;

__attribute__((used)) static void
re_set_rxmode(struct rl_softc *sc)
{
 struct ifnet *ifp;
 uint32_t h, hashes[2] = { 0, 0 };
 uint32_t rxfilt;

 RL_LOCK_ASSERT(sc);

 ifp = sc->rl_ifp;

 rxfilt = RL_RXCFG_CONFIG | RL_RXCFG_RX_INDIV | RL_RXCFG_RX_BROAD;
 if ((sc->rl_flags & RL_FLAG_EARLYOFF) != 0)
  rxfilt |= RL_RXCFG_EARLYOFF;
 else if ((sc->rl_flags & RL_FLAG_8168G_PLUS) != 0)
  rxfilt |= RL_RXCFG_EARLYOFFV2;

 if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
  if (ifp->if_flags & IFF_PROMISC)
   rxfilt |= RL_RXCFG_RX_ALLPHYS;





  rxfilt |= RL_RXCFG_RX_MULTI;
  hashes[0] = hashes[1] = 0xffffffff;
  goto done;
 }

 if_foreach_llmaddr(ifp, re_hash_maddr, hashes);

 if (hashes[0] != 0 || hashes[1] != 0) {







  if ((sc->rl_flags & RL_FLAG_PCIE) != 0) {
   h = bswap32(hashes[0]);
   hashes[0] = bswap32(hashes[1]);
   hashes[1] = h;
  }
  rxfilt |= RL_RXCFG_RX_MULTI;
 }

 if (sc->rl_hwrev->rl_rev == RL_HWREV_8168F) {

  hashes[0] = 0xffffffff;
  hashes[1] = 0xffffffff;
 }

done:
 CSR_WRITE_4(sc, RL_MAR0, hashes[0]);
 CSR_WRITE_4(sc, RL_MAR4, hashes[1]);
 CSR_WRITE_4(sc, RL_RXCFG, rxfilt);
}
