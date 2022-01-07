
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct xl_softc {struct ifnet* xl_ifp; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_1 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int XL_CMD_RX_SET_FILT ;
 int XL_COMMAND ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_RXFILTER_ALLFRAMES ;
 int XL_RXFILTER_ALLMULTI ;
 int XL_RXFILTER_BROADCAST ;
 int XL_RXFILTER_INDIVIDUAL ;
 int XL_SEL_WIN (int) ;
 int XL_W5_RX_FILTER ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int xl_check_maddr_90x ;

__attribute__((used)) static void
xl_rxfilter_90x(struct xl_softc *sc)
{
 struct ifnet *ifp;
 u_int8_t rxfilt;

 XL_LOCK_ASSERT(sc);

 ifp = sc->xl_ifp;

 XL_SEL_WIN(5);
 rxfilt = CSR_READ_1(sc, XL_W5_RX_FILTER);
 rxfilt &= ~(XL_RXFILTER_ALLFRAMES | XL_RXFILTER_ALLMULTI |
     XL_RXFILTER_BROADCAST | XL_RXFILTER_INDIVIDUAL);


 rxfilt |= XL_RXFILTER_INDIVIDUAL;

 if (ifp->if_flags & IFF_BROADCAST)
  rxfilt |= XL_RXFILTER_BROADCAST;


 if (ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) {
  if (ifp->if_flags & IFF_PROMISC)
   rxfilt |= XL_RXFILTER_ALLFRAMES;
  if (ifp->if_flags & IFF_ALLMULTI)
   rxfilt |= XL_RXFILTER_ALLMULTI;
 } else
  if_foreach_llmaddr(sc->xl_ifp, xl_check_maddr_90x, &rxfilt);

 CSR_WRITE_2(sc, XL_COMMAND, rxfilt | XL_CMD_RX_SET_FILT);
 XL_SEL_WIN(7);
}
