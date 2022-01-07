
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_drv_flags; int if_xname; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; int hn_tx_ring_inuse; TYPE_2__* hn_tx_ring; TYPE_1__* hn_vf_ifp; struct ifnet* hn_ifp; } ;
struct TYPE_4__ {scalar_t__ hn_oactive; } ;
struct TYPE_3__ {int if_flags; } ;


 int HN_FLAG_RXVF ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int HN_NVS_DATAPATH_SYNTH ;
 int HN_XVFFLAG_ENABLED ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int KASSERT (int,char*) ;
 int atomic_clear_int (int *,int ) ;
 int hn_nvs_set_datapath (struct hn_softc*,int ) ;
 int hn_polling (struct hn_softc*,int ) ;
 int hn_rxfilter_config (struct hn_softc*) ;
 int hn_suspend_data (struct hn_softc*) ;
 int hn_xpnt_vf_iocsetflags (struct hn_softc*) ;
 int hn_xpnt_vf_saveifflags (struct hn_softc*) ;
 int hn_xpnt_vf_setdisable (struct hn_softc*,int) ;

__attribute__((used)) static void
hn_stop(struct hn_softc *sc, bool detaching)
{
 struct ifnet *ifp = sc->hn_ifp;
 int i;

 HN_LOCK_ASSERT(sc);

 KASSERT(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
     ("synthetic parts were not attached"));


 atomic_clear_int(&ifp->if_drv_flags, IFF_DRV_RUNNING);


 hn_polling(sc, 0);

 if (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) {
  KASSERT(sc->hn_vf_ifp != ((void*)0),
      ("%s: VF is not attached", ifp->if_xname));


  hn_xpnt_vf_setdisable(sc, 0 );






  hn_nvs_set_datapath(sc, HN_NVS_DATAPATH_SYNTH);




  hn_xpnt_vf_saveifflags(sc);
  sc->hn_vf_ifp->if_flags &= ~IFF_UP;
  hn_xpnt_vf_iocsetflags(sc);
 }


 hn_suspend_data(sc);


 atomic_clear_int(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
 for (i = 0; i < sc->hn_tx_ring_inuse; ++i)
  sc->hn_tx_ring[i].hn_oactive = 0;





 if (!detaching && (sc->hn_flags & HN_FLAG_RXVF))
  hn_rxfilter_config(sc);
}
