
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_flags; TYPE_1__* hn_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int HN_FLAG_RXVF ;
 int IFF_DRV_RUNNING ;
 int hn_polling (struct hn_softc*,int ) ;
 int hn_suspend_data (struct hn_softc*) ;
 int hn_suspend_mgmt (struct hn_softc*) ;

__attribute__((used)) static void
hn_suspend(struct hn_softc *sc)
{


 hn_polling(sc, 0);






 if ((sc->hn_ifp->if_drv_flags & IFF_DRV_RUNNING) ||
     (sc->hn_flags & HN_FLAG_RXVF))
  hn_suspend_data(sc);
 hn_suspend_mgmt(sc);
}
