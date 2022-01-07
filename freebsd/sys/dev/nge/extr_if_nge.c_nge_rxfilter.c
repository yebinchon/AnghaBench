
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nge_softc {struct ifnet* nge_ifp; } ;
struct ifnet {int if_flags; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER_4 (struct nge_softc*,int ,int ) ;
 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int NGE_FILTADDR_MCAST_LO ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int NGE_MCAST_FILTER_LEN ;
 int NGE_RXFILTCTL_ALLMULTI ;
 int NGE_RXFILTCTL_ALLPHYS ;
 int NGE_RXFILTCTL_ARP ;
 int NGE_RXFILTCTL_BROAD ;
 int NGE_RXFILTCTL_ENABLE ;
 int NGE_RXFILTCTL_MCHASH ;
 int NGE_RXFILTCTL_PERFECT ;
 int NGE_RXFILTCTL_UCHASH ;
 int NGE_RXFILT_CTL ;
 int NGE_RXFILT_DATA ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct nge_softc*) ;
 int nge_write_maddr ;

__attribute__((used)) static void
nge_rxfilter(struct nge_softc *sc)
{
 struct ifnet *ifp;
 uint32_t i, rxfilt;

 NGE_LOCK_ASSERT(sc);
 ifp = sc->nge_ifp;


 rxfilt = CSR_READ_4(sc, NGE_RXFILT_CTL);
 rxfilt &= ~NGE_RXFILTCTL_ENABLE;
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, rxfilt);
 CSR_BARRIER_4(sc, NGE_RXFILT_CTL, BUS_SPACE_BARRIER_WRITE);

 rxfilt &= ~(NGE_RXFILTCTL_ALLMULTI | NGE_RXFILTCTL_ALLPHYS);
 rxfilt &= ~NGE_RXFILTCTL_BROAD;




 rxfilt &= ~(NGE_RXFILTCTL_MCHASH | NGE_RXFILTCTL_UCHASH);







 rxfilt |= NGE_RXFILTCTL_ARP | NGE_RXFILTCTL_PERFECT;




 if ((ifp->if_flags & IFF_BROADCAST) != 0)
  rxfilt |= NGE_RXFILTCTL_BROAD;

 if ((ifp->if_flags & IFF_PROMISC) != 0 ||
     (ifp->if_flags & IFF_ALLMULTI) != 0) {
  rxfilt |= NGE_RXFILTCTL_ALLMULTI;
  if ((ifp->if_flags & IFF_PROMISC) != 0)
   rxfilt |= NGE_RXFILTCTL_ALLPHYS;
  goto done;
 }





 rxfilt |= NGE_RXFILTCTL_MCHASH;


 for (i = 0; i < NGE_MCAST_FILTER_LEN; i += 2) {
  CSR_WRITE_4(sc, NGE_RXFILT_CTL, NGE_FILTADDR_MCAST_LO + i);
  CSR_WRITE_4(sc, NGE_RXFILT_DATA, 0);
 }

 if_foreach_llmaddr(ifp, nge_write_maddr, sc);
done:
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, rxfilt);

 rxfilt |= NGE_RXFILTCTL_ENABLE;
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, rxfilt);
 CSR_BARRIER_4(sc, NGE_RXFILT_CTL, BUS_SPACE_BARRIER_WRITE);
}
