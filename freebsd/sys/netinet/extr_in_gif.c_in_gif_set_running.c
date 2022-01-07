
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gif_softc {TYPE_1__* gif_iphdr; } ;
struct TYPE_4__ {int if_drv_flags; } ;
struct TYPE_3__ {int ip_src; } ;


 TYPE_2__* GIF2IFP (struct gif_softc*) ;
 int IFF_DRV_RUNNING ;
 scalar_t__ in_localip (int ) ;

__attribute__((used)) static void
in_gif_set_running(struct gif_softc *sc)
{

 if (in_localip(sc->gif_iphdr->ip_src))
  GIF2IFP(sc)->if_drv_flags |= IFF_DRV_RUNNING;
 else
  GIF2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
}
