
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ip_src; } ;
struct gre_softc {TYPE_1__ gre_oip; } ;
struct TYPE_4__ {int if_drv_flags; } ;


 TYPE_2__* GRE2IFP (struct gre_softc*) ;
 int IFF_DRV_RUNNING ;
 scalar_t__ in_localip (int ) ;

__attribute__((used)) static void
in_gre_set_running(struct gre_softc *sc)
{

 if (in_localip(sc->gre_oip.ip_src))
  GRE2IFP(sc)->if_drv_flags |= IFF_DRV_RUNNING;
 else
  GRE2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
}
