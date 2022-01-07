
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sge_softc {struct ifnet* sge_ifp; } ;
struct ifnet {int if_flags; } ;


 int AcceptAllPhys ;
 int AcceptBroadcast ;
 int AcceptMulticast ;
 int AcceptMyPhys ;
 int CSR_READ_2 (struct sge_softc*,int ) ;
 int CSR_WRITE_2 (struct sge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int RxHashTable ;
 int RxHashTable2 ;
 int RxMacControl ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int sge_hash_maddr ;

__attribute__((used)) static void
sge_rxfilter(struct sge_softc *sc)
{
 struct ifnet *ifp;
 uint32_t hashes[2];
 uint16_t rxfilt;

 SGE_LOCK_ASSERT(sc);

 ifp = sc->sge_ifp;
 rxfilt = CSR_READ_2(sc, RxMacControl);
 rxfilt &= ~(AcceptBroadcast | AcceptAllPhys | AcceptMulticast);
 rxfilt |= AcceptMyPhys;
 if ((ifp->if_flags & IFF_BROADCAST) != 0)
  rxfilt |= AcceptBroadcast;
 if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
  if ((ifp->if_flags & IFF_PROMISC) != 0)
   rxfilt |= AcceptAllPhys;
  rxfilt |= AcceptMulticast;
  hashes[0] = 0xFFFFFFFF;
  hashes[1] = 0xFFFFFFFF;
 } else {
  rxfilt |= AcceptMulticast;
  hashes[0] = hashes[1] = 0;

  if_foreach_llmaddr(ifp, sge_hash_maddr, hashes);
 }
 CSR_WRITE_2(sc, RxMacControl, rxfilt);
 CSR_WRITE_4(sc, RxHashTable, hashes[0]);
 CSR_WRITE_4(sc, RxHashTable2, hashes[1]);
}
