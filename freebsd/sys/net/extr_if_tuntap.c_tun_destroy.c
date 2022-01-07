
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int si_note; } ;
struct tuntap_softc {int tun_flags; scalar_t__ tun_busy; int tun_cv; int tun_mtx; TYPE_1__* tun_drv; TYPE_2__ tun_rsel; int tun_dev; } ;
struct TYPE_10__ {int if_dunit; int * if_softc; int if_vnet; } ;
struct TYPE_8__ {int unrhdr; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_TUN ;
 TYPE_3__* TUN2IFP (struct tuntap_softc*) ;
 int TUN_DYING ;
 int TUN_L2 ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int bpfdetach (TYPE_3__*) ;
 int cv_destroy (int *) ;
 int cv_wait_unlock (int *,int *) ;
 int destroy_dev (int ) ;
 int ether_ifdetach (TYPE_3__*) ;
 int free (struct tuntap_softc*,int ) ;
 int free_unr (int ,int ) ;
 int if_detach (TYPE_3__*) ;
 int if_free (TYPE_3__*) ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_2__*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int tun_ioctl_sx ;

__attribute__((used)) static void
tun_destroy(struct tuntap_softc *tp)
{

 TUN_LOCK(tp);
 tp->tun_flags |= TUN_DYING;
 if (tp->tun_busy != 0)
  cv_wait_unlock(&tp->tun_cv, &tp->tun_mtx);
 else
  TUN_UNLOCK(tp);

 CURVNET_SET(TUN2IFP(tp)->if_vnet);


 destroy_dev(tp->tun_dev);
 seldrain(&tp->tun_rsel);
 knlist_clear(&tp->tun_rsel.si_note, 0);
 knlist_destroy(&tp->tun_rsel.si_note);
 if ((tp->tun_flags & TUN_L2) != 0) {
  ether_ifdetach(TUN2IFP(tp));
 } else {
  bpfdetach(TUN2IFP(tp));
  if_detach(TUN2IFP(tp));
 }
 sx_xlock(&tun_ioctl_sx);
 TUN2IFP(tp)->if_softc = ((void*)0);
 sx_xunlock(&tun_ioctl_sx);
 free_unr(tp->tun_drv->unrhdr, TUN2IFP(tp)->if_dunit);
 if_free(TUN2IFP(tp));
 mtx_destroy(&tp->tun_mtx);
 cv_destroy(&tp->tun_cv);
 free(tp, M_TUN);
 CURVNET_RESTORE();
}
