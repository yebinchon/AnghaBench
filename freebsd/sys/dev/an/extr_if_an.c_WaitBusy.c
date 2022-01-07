
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int mpi350; } ;


 int AN_CMD_BUSY ;
 int AN_COMMAND (int ) ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int FLASH_DELAY (struct an_softc*,int) ;
 int unstickbusy (struct ifnet*) ;

__attribute__((used)) static int
WaitBusy(struct ifnet *ifp, int uSec)
{
 int statword = 0xffff;
 int delay = 0;
 struct an_softc *sc = ifp->if_softc;

 while ((statword & AN_CMD_BUSY) && delay <= (1000 * 100)) {
  FLASH_DELAY(sc, 10);
  delay += 10;
  statword = CSR_READ_2(sc, AN_COMMAND(sc->mpi350));

  if ((AN_CMD_BUSY & statword) && (delay % 200)) {
   unstickbusy(ifp);
  }
 }

 return 0 == (AN_CMD_BUSY & statword);
}
