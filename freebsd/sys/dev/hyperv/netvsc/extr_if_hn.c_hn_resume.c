
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_flags; scalar_t__ hn_pollhz; TYPE_1__* hn_ifp; int * hn_vf_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int HN_FLAG_RXVF ;
 int IFF_DRV_RUNNING ;
 int hn_polling (struct hn_softc*,scalar_t__) ;
 int hn_resume_data (struct hn_softc*) ;
 int hn_resume_mgmt (struct hn_softc*) ;
 scalar_t__ hn_xpnt_vf ;

__attribute__((used)) static void
hn_resume(struct hn_softc *sc)
{






 if ((sc->hn_ifp->if_drv_flags & IFF_DRV_RUNNING) ||
     (sc->hn_flags & HN_FLAG_RXVF))
  hn_resume_data(sc);
 if ((sc->hn_flags & HN_FLAG_RXVF) == 0 &&
     !(hn_xpnt_vf && sc->hn_vf_ifp != ((void*)0)))
  hn_resume_mgmt(sc);





 if ((sc->hn_ifp->if_drv_flags & IFF_DRV_RUNNING) && sc->hn_pollhz > 0)
  hn_polling(sc, sc->hn_pollhz);
}
