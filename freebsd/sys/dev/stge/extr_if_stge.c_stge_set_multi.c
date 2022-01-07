
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int if_flags; } ;
typedef int mchash ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int ) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RM_ReceiveAllFrames ;
 int RM_ReceiveMulticast ;
 int RM_ReceiveMulticastHash ;
 int STGE_HashTable0 ;
 int STGE_HashTable1 ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_ReceiveMode ;
 int bzero (int *,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 int stge_hash_maddr ;

__attribute__((used)) static void
stge_set_multi(struct stge_softc *sc)
{
 struct ifnet *ifp;
 uint32_t mchash[2];
 uint16_t mode;
 int count;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;

 mode = CSR_READ_2(sc, STGE_ReceiveMode);
 if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
  if ((ifp->if_flags & IFF_PROMISC) != 0)
   mode |= RM_ReceiveAllFrames;
  else if ((ifp->if_flags & IFF_ALLMULTI) != 0)
   mode |= RM_ReceiveMulticast;
  CSR_WRITE_2(sc, STGE_ReceiveMode, mode);
  return;
 }


 CSR_WRITE_4(sc, STGE_HashTable0, 0);
 CSR_WRITE_4(sc, STGE_HashTable1, 0);
 bzero(mchash, sizeof(mchash));
 count = if_foreach_llmaddr(ifp, stge_hash_maddr, mchash);

 mode &= ~(RM_ReceiveMulticast | RM_ReceiveAllFrames);
 if (count > 0)
  mode |= RM_ReceiveMulticastHash;
 else
  mode &= ~RM_ReceiveMulticastHash;

 CSR_WRITE_4(sc, STGE_HashTable0, mchash[0]);
 CSR_WRITE_4(sc, STGE_HashTable1, mchash[1]);
 CSR_WRITE_2(sc, STGE_ReceiveMode, mode);
}
