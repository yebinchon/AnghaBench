
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gif_softc {scalar_t__ gif_family; int gif_hdr; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int CK_LIST_REMOVE (struct gif_softc*,int ) ;
 TYPE_1__* GIF2IFP (struct gif_softc*) ;
 int GIF_WAIT () ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int M_GIF ;
 int SA_XLOCKED ;
 int chain ;
 int free (int ,int ) ;
 int gif_ioctl_sx ;
 int if_link_state_change (TYPE_1__*,int ) ;
 int srchash ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
gif_delete_tunnel(struct gif_softc *sc)
{

 sx_assert(&gif_ioctl_sx, SA_XLOCKED);
 if (sc->gif_family != 0) {
  CK_LIST_REMOVE(sc, srchash);
  CK_LIST_REMOVE(sc, chain);

  GIF_WAIT();
  free(sc->gif_hdr, M_GIF);
 }
 sc->gif_family = 0;
 GIF2IFP(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
 if_link_state_change(GIF2IFP(sc), LINK_STATE_DOWN);
}
