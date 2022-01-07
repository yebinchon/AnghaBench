
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct me_softc {int me_src; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 TYPE_1__* ME2IFP (struct me_softc*) ;
 scalar_t__ in_localip (int ) ;

__attribute__((used)) static void
me_set_running(struct me_softc *sc)
{

 if (in_localip(sc->me_src))
  ME2IFP(sc)->if_drv_flags |= IFF_DRV_RUNNING;
 else
  ME2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
}
