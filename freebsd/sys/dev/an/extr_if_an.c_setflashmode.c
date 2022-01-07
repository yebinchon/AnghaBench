
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int mpi350; } ;


 int AN_COMMAND (int ) ;
 int AN_SW0 (int ) ;
 int AN_SW1 (int ) ;
 int AN_TIMEOUT ;
 int CSR_WRITE_2 (struct an_softc*,int ,int ) ;
 int EIO ;
 int FLASH_COMMAND ;
 int FLASH_DELAY (struct an_softc*,int) ;
 int WaitBusy (struct ifnet*,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
setflashmode(struct ifnet *ifp)
{
 int status;
 struct an_softc *sc = ifp->if_softc;

 CSR_WRITE_2(sc, AN_SW0(sc->mpi350), FLASH_COMMAND);
 CSR_WRITE_2(sc, AN_SW1(sc->mpi350), FLASH_COMMAND);
 CSR_WRITE_2(sc, AN_SW0(sc->mpi350), FLASH_COMMAND);
 CSR_WRITE_2(sc, AN_COMMAND(sc->mpi350), FLASH_COMMAND);





 FLASH_DELAY(sc, 500);

 if (!(status = WaitBusy(ifp, AN_TIMEOUT))) {
  printf("Waitbusy hang after setflash mode\n");
  return -EIO;
 }
 return 0;
}
