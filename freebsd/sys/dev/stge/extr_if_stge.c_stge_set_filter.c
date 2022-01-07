
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int ) ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int RM_ReceiveAllFrames ;
 int RM_ReceiveBroadcast ;
 int RM_ReceiveUnicast ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_ReceiveMode ;

__attribute__((used)) static void
stge_set_filter(struct stge_softc *sc)
{
 struct ifnet *ifp;
 uint16_t mode;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;

 mode = CSR_READ_2(sc, STGE_ReceiveMode);
 mode |= RM_ReceiveUnicast;
 if ((ifp->if_flags & IFF_BROADCAST) != 0)
  mode |= RM_ReceiveBroadcast;
 else
  mode &= ~RM_ReceiveBroadcast;
 if ((ifp->if_flags & IFF_PROMISC) != 0)
  mode |= RM_ReceiveAllFrames;
 else
  mode &= ~RM_ReceiveAllFrames;

 CSR_WRITE_2(sc, STGE_ReceiveMode, mode);
}
