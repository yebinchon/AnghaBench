
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;


 scalar_t__ CSR_READ_2 (struct stge_softc*,int ) ;
 scalar_t__ CSR_READ_4 (struct stge_softc*,int ) ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int STGE_FramesAbortXSColls ;
 int STGE_FramesLostRxErrors ;
 int STGE_FramesRcvdOk ;
 int STGE_FramesWEXDeferal ;
 int STGE_FramesXmtdOk ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_LateCollisions ;
 int STGE_MultiColFrames ;
 int STGE_OctetRcvOk ;
 int STGE_OctetXmtdOk ;
 int STGE_SingleColFrames ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
stge_stats_update(struct stge_softc *sc)
{
 struct ifnet *ifp;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;

 CSR_READ_4(sc,STGE_OctetRcvOk);

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, CSR_READ_4(sc, STGE_FramesRcvdOk));

 if_inc_counter(ifp, IFCOUNTER_IERRORS, CSR_READ_2(sc, STGE_FramesLostRxErrors));

 CSR_READ_4(sc, STGE_OctetXmtdOk);

 if_inc_counter(ifp, IFCOUNTER_OPACKETS, CSR_READ_4(sc, STGE_FramesXmtdOk));

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     CSR_READ_4(sc, STGE_LateCollisions) +
     CSR_READ_4(sc, STGE_MultiColFrames) +
     CSR_READ_4(sc, STGE_SingleColFrames));

 if_inc_counter(ifp, IFCOUNTER_OERRORS,
     CSR_READ_2(sc, STGE_FramesAbortXSColls) +
     CSR_READ_2(sc, STGE_FramesWEXDeferal));
}
