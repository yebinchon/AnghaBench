
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gre_softc {scalar_t__ gre_family; struct gre_softc* gre_so; int epoch_ctx; int so; int list; int gre_hdr; } ;
struct gre_socket {scalar_t__ gre_family; struct gre_socket* gre_so; int epoch_ctx; int so; int list; int gre_hdr; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 scalar_t__ CK_LIST_EMPTY (int *) ;
 int CK_LIST_REMOVE (struct gre_softc*,int ) ;
 TYPE_1__* GRE2IFP (struct gre_softc*) ;
 int GRE_WAIT () ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int M_GRE ;
 int SA_XLOCKED ;
 int chain ;
 int epoch_call (int ,int *,int ) ;
 int free (int ,int ) ;
 int gre_ioctl_sx ;
 int gre_sofree ;
 int if_link_state_change (TYPE_1__*,int ) ;
 int net_epoch_preempt ;
 int soclose (int ) ;
 int srchash ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
gre_delete_tunnel(struct gre_softc *sc)
{
 struct gre_socket *gs;

 sx_assert(&gre_ioctl_sx, SA_XLOCKED);
 if (sc->gre_family != 0) {
  CK_LIST_REMOVE(sc, chain);
  CK_LIST_REMOVE(sc, srchash);
  GRE_WAIT();
  free(sc->gre_hdr, M_GRE);
  sc->gre_family = 0;
 }




 if ((gs = sc->gre_so) != ((void*)0) && CK_LIST_EMPTY(&gs->list)) {
  CK_LIST_REMOVE(gs, chain);
  soclose(gs->so);
  epoch_call(net_epoch_preempt, &gs->epoch_ctx, gre_sofree);
  sc->gre_so = ((void*)0);
 }
 GRE2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
 if_link_state_change(GRE2IFP(sc), LINK_STATE_DOWN);
}
