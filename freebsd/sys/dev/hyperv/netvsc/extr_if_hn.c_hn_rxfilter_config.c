
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_flags; int if_multiaddrs; } ;
struct hn_softc {int hn_flags; struct ifnet* hn_ifp; } ;


 int CK_STAILQ_EMPTY (int *) ;
 int HN_FLAG_RXVF ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int NDIS_PACKET_TYPE_ALL_MULTICAST ;
 int NDIS_PACKET_TYPE_BROADCAST ;
 int NDIS_PACKET_TYPE_DIRECTED ;
 int NDIS_PACKET_TYPE_PROMISCUOUS ;
 int hn_set_rxfilter (struct hn_softc*,int ) ;

__attribute__((used)) static int
hn_rxfilter_config(struct hn_softc *sc)
{
 struct ifnet *ifp = sc->hn_ifp;
 uint32_t filter;

 HN_LOCK_ASSERT(sc);






 if ((ifp->if_flags & IFF_PROMISC) || (sc->hn_flags & HN_FLAG_RXVF)) {
  filter = NDIS_PACKET_TYPE_PROMISCUOUS;
 } else {
  filter = NDIS_PACKET_TYPE_DIRECTED;
  if (ifp->if_flags & IFF_BROADCAST)
   filter |= NDIS_PACKET_TYPE_BROADCAST;

  if ((ifp->if_flags & IFF_ALLMULTI) ||
      !CK_STAILQ_EMPTY(&ifp->if_multiaddrs))
   filter |= NDIS_PACKET_TYPE_ALL_MULTICAST;
 }
 return (hn_set_rxfilter(sc, filter));
}
