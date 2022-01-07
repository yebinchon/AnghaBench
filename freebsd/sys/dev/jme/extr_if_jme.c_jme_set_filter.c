
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {struct ifnet* jme_ifp; } ;
struct ifnet {int if_flags; } ;
typedef int mchash ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_MAR0 ;
 int JME_MAR1 ;
 int JME_RXMAC ;
 int RXMAC_ALLMULTI ;
 int RXMAC_BROADCAST ;
 int RXMAC_MULTICAST ;
 int RXMAC_PROMISC ;
 int RXMAC_UNICAST ;
 int bzero (int*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;
 int jme_hash_maddr ;

__attribute__((used)) static void
jme_set_filter(struct jme_softc *sc)
{
 struct ifnet *ifp;
 uint32_t mchash[2];
 uint32_t rxcfg;

 JME_LOCK_ASSERT(sc);

 ifp = sc->jme_ifp;

 rxcfg = CSR_READ_4(sc, JME_RXMAC);
 rxcfg &= ~ (RXMAC_BROADCAST | RXMAC_PROMISC | RXMAC_MULTICAST |
     RXMAC_ALLMULTI);

 rxcfg |= RXMAC_UNICAST;
 if ((ifp->if_flags & IFF_BROADCAST) != 0)
  rxcfg |= RXMAC_BROADCAST;
 if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
  if ((ifp->if_flags & IFF_PROMISC) != 0)
   rxcfg |= RXMAC_PROMISC;
  if ((ifp->if_flags & IFF_ALLMULTI) != 0)
   rxcfg |= RXMAC_ALLMULTI;
  CSR_WRITE_4(sc, JME_MAR0, 0xFFFFFFFF);
  CSR_WRITE_4(sc, JME_MAR1, 0xFFFFFFFF);
  CSR_WRITE_4(sc, JME_RXMAC, rxcfg);
  return;
 }
 rxcfg |= RXMAC_MULTICAST;
 bzero(mchash, sizeof(mchash));
 if_foreach_llmaddr(ifp, jme_hash_maddr, &mchash);

 CSR_WRITE_4(sc, JME_MAR0, mchash[0]);
 CSR_WRITE_4(sc, JME_MAR1, mchash[1]);
 CSR_WRITE_4(sc, JME_RXMAC, rxcfg);
}
