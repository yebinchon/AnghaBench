
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int mpi350; } ;


 int AN_CMD_DISABLE ;
 int AN_CMD_FW_RESTART ;
 int AN_COMMAND (int ) ;
 int AN_LOCK (struct an_softc*) ;
 int AN_TIMEOUT ;
 int AN_UNLOCK (struct an_softc*) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int ) ;
 int EBUSY ;
 int FLASH_DELAY (struct an_softc*,int) ;
 int WaitBusy (struct ifnet*,int) ;
 int an_cmd (struct an_softc*,int ,int ) ;
 int an_stop (struct an_softc*) ;
 int if_printf (struct ifnet*,char*,int) ;

__attribute__((used)) static int
cmdreset(struct ifnet *ifp)
{
 int status;
 struct an_softc *sc = ifp->if_softc;

 AN_LOCK(sc);
 an_stop(sc);

 an_cmd(sc, AN_CMD_DISABLE, 0);

 if (!(status = WaitBusy(ifp, AN_TIMEOUT))) {
  if_printf(ifp, "Waitbusy hang b4 RESET =%d\n", status);
  AN_UNLOCK(sc);
  return -EBUSY;
 }
 CSR_WRITE_2(sc, AN_COMMAND(sc->mpi350), AN_CMD_FW_RESTART);

 FLASH_DELAY(sc, 1000);


 if (!(status = WaitBusy(ifp, 100))) {
  if_printf(ifp, "Waitbusy hang AFTER RESET =%d\n", status);
  AN_UNLOCK(sc);
  return -EBUSY;
 }
 AN_UNLOCK(sc);
 return 0;
}
