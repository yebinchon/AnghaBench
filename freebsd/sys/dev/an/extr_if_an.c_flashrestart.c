
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int dummy; } ;


 int FLASH_DELAY (struct an_softc*,int) ;
 int an_init_locked (struct an_softc*) ;

__attribute__((used)) static int
flashrestart(struct ifnet *ifp)
{
 int status = 0;
 struct an_softc *sc = ifp->if_softc;

 FLASH_DELAY(sc, 1024);

 an_init_locked(sc);

 FLASH_DELAY(sc, 1024);
 return status;
}
