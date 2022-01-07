
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int mpi350; } ;


 int AN_CMD_BUSY ;
 int AN_COMMAND (int ) ;
 int AN_EVENT_ACK (int ) ;
 int AN_EV_CLR_STUCK_BUSY ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int ) ;

__attribute__((used)) static int
unstickbusy(struct ifnet *ifp)
{
 struct an_softc *sc = ifp->if_softc;

 if (CSR_READ_2(sc, AN_COMMAND(sc->mpi350)) & AN_CMD_BUSY) {
  CSR_WRITE_2(sc, AN_EVENT_ACK(sc->mpi350),
       AN_EV_CLR_STUCK_BUSY);
  return 1;
 }
 return 0;
}
