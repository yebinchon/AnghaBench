
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct me_softc {TYPE_2__ me_dst; TYPE_1__ me_src; } ;
struct TYPE_7__ {int if_drv_flags; } ;


 int CK_LIST_REMOVE (struct me_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 TYPE_3__* ME2IFP (struct me_softc*) ;
 scalar_t__ ME_READY (struct me_softc*) ;
 int ME_WAIT () ;
 int SA_XLOCKED ;
 int chain ;
 int if_link_state_change (TYPE_3__*,int ) ;
 int me_ioctl_sx ;
 int srchash ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
me_delete_tunnel(struct me_softc *sc)
{

 sx_assert(&me_ioctl_sx, SA_XLOCKED);
 if (ME_READY(sc)) {
  CK_LIST_REMOVE(sc, chain);
  CK_LIST_REMOVE(sc, srchash);
  ME_WAIT();

  sc->me_src.s_addr = 0;
  sc->me_dst.s_addr = 0;
  ME2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
  if_link_state_change(ME2IFP(sc), LINK_STATE_DOWN);
 }
}
