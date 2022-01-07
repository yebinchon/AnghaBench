
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xl_softc {TYPE_1__* xl_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_UNLOCK (struct xl_softc*) ;
 int xl_rxeof (struct xl_softc*) ;

__attribute__((used)) static void
xl_rxeof_task(void *arg, int pending)
{
 struct xl_softc *sc = (struct xl_softc *)arg;

 XL_LOCK(sc);
 if (sc->xl_ifp->if_drv_flags & IFF_DRV_RUNNING)
  xl_rxeof(sc);
 XL_UNLOCK(sc);
}
