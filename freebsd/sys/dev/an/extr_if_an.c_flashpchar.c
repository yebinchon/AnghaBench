
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int mpi350; } ;


 int AN_SW0 (int ) ;
 int AN_SW1 (int ) ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int FLASH_DELAY (struct an_softc*,int) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static int
flashpchar(struct ifnet *ifp, int byte, int dwelltime)
{
 int echo;
 int pollbusy, waittime;
 struct an_softc *sc = ifp->if_softc;

 byte |= 0x8000;

 if (dwelltime == 0)
  dwelltime = 200;

 waittime = dwelltime;




 do {
  pollbusy = CSR_READ_2(sc, AN_SW0(sc->mpi350));

  if (pollbusy & 0x8000) {
   FLASH_DELAY(sc, 50);
   waittime -= 50;
   continue;
  } else
   break;
 }
 while (waittime >= 0);



 if (waittime <= 0) {
  if_printf(ifp, "flash putchar busywait timeout!\n");
  return -1;
 }



 do {
  CSR_WRITE_2(sc, AN_SW0(sc->mpi350), byte);
  FLASH_DELAY(sc, 50);
  dwelltime -= 50;
  echo = CSR_READ_2(sc, AN_SW1(sc->mpi350));
 } while (dwelltime >= 0 && echo != byte);


 CSR_WRITE_2(sc, AN_SW1(sc->mpi350), 0);

 return echo == byte;
}
