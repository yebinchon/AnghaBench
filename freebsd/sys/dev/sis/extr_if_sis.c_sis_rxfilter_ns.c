
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sis_softc {struct ifnet* sis_ifp; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int NS_FILTADDR_FMEM_LO ;
 int NS_RXFILTCTL_ARP ;
 int NS_RXFILTCTL_MCHASH ;
 int NS_RXFILTCTL_PERFECT ;
 int SIS_RXFILTCTL_ALLMULTI ;
 int SIS_RXFILTCTL_ALLPHYS ;
 int SIS_RXFILTCTL_BROAD ;
 int SIS_RXFILTCTL_ENABLE ;
 int SIS_RXFILT_CTL ;
 int SIS_RXFILT_DATA ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct sis_softc*) ;
 int sis_write_maddr ;

__attribute__((used)) static void
sis_rxfilter_ns(struct sis_softc *sc)
{
 struct ifnet *ifp;
 uint32_t i, filter;

 ifp = sc->sis_ifp;
 filter = CSR_READ_4(sc, SIS_RXFILT_CTL);
 if (filter & SIS_RXFILTCTL_ENABLE) {



  CSR_WRITE_4(sc, SIS_RXFILT_CTL, filter & ~SIS_RXFILTCTL_ENABLE);
  CSR_READ_4(sc, SIS_RXFILT_CTL);
 }
 filter &= ~(NS_RXFILTCTL_ARP | NS_RXFILTCTL_PERFECT |
     NS_RXFILTCTL_MCHASH | SIS_RXFILTCTL_ALLPHYS | SIS_RXFILTCTL_BROAD |
     SIS_RXFILTCTL_ALLMULTI);

 if (ifp->if_flags & IFF_BROADCAST)
  filter |= SIS_RXFILTCTL_BROAD;






 filter |= NS_RXFILTCTL_ARP | NS_RXFILTCTL_PERFECT;

 if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
  filter |= SIS_RXFILTCTL_ALLMULTI;
  if (ifp->if_flags & IFF_PROMISC)
   filter |= SIS_RXFILTCTL_ALLPHYS;
 } else {




  filter |= NS_RXFILTCTL_MCHASH;


  for (i = 0; i < 32; i++) {
   CSR_WRITE_4(sc, SIS_RXFILT_CTL, NS_FILTADDR_FMEM_LO +
       (i * 2));
   CSR_WRITE_4(sc, SIS_RXFILT_DATA, 0);
  }

  if_foreach_llmaddr(ifp, sis_write_maddr, sc);
 }


 CSR_WRITE_4(sc, SIS_RXFILT_CTL, filter | SIS_RXFILTCTL_ENABLE);
 CSR_READ_4(sc, SIS_RXFILT_CTL);
}
