
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct hn_softc {int hn_flags; int hn_tx_ring_inuse; scalar_t__ hn_pollhz; TYPE_1__* hn_tx_ring; struct ifnet* hn_ifp; } ;
struct TYPE_2__ {scalar_t__ hn_oactive; } ;


 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int atomic_clear_int (int*,int ) ;
 int atomic_set_int (int*,int) ;
 int hn_polling (struct hn_softc*,scalar_t__) ;
 int hn_resume_tx (struct hn_softc*,int) ;
 int hn_rxfilter_config (struct hn_softc*) ;
 int hn_xpnt_vf_init (struct hn_softc*) ;
 scalar_t__ hn_xpnt_vf_isready (struct hn_softc*) ;

__attribute__((used)) static void
hn_init_locked(struct hn_softc *sc)
{
 struct ifnet *ifp = sc->hn_ifp;
 int i;

 HN_LOCK_ASSERT(sc);

 if ((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) == 0)
  return;

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;


 hn_rxfilter_config(sc);


 atomic_clear_int(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
 for (i = 0; i < sc->hn_tx_ring_inuse; ++i)
  sc->hn_tx_ring[i].hn_oactive = 0;


 hn_resume_tx(sc, sc->hn_tx_ring_inuse);

 if (hn_xpnt_vf_isready(sc)) {

  hn_xpnt_vf_init(sc);
 }


 atomic_set_int(&ifp->if_drv_flags, IFF_DRV_RUNNING);


 if (sc->hn_pollhz > 0)
  hn_polling(sc, sc->hn_pollhz);
}
