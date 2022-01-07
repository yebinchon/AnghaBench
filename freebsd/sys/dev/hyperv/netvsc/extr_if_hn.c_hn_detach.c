
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct hn_softc {int hn_flags; int hn_vf_lock; int * hn_xact; int hn_prichan; int * hn_vf_taskq; int * hn_mgmt_taskq0; int ** hn_tx_taskqs; int hn_media; struct ifnet* hn_vf_ifp; int * hn_ifnet_lnkhand; int * hn_ifnet_dethand; int * hn_ifnet_atthand; int * hn_ifnet_evthand; int * hn_ifaddr_evthand; struct ifnet* hn_ifp; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK (struct hn_softc*) ;
 int HN_LOCK_DESTROY (struct hn_softc*) ;
 int HN_UNLOCK (struct hn_softc*) ;
 int IFF_DRV_RUNNING ;
 int M_DEVBUF ;
 int __compiler_membar () ;
 struct hn_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifattach_event ;
 int ether_ifdetach (struct ifnet*) ;
 int free (int **,int ) ;
 int hn_destroy_rx_data (struct hn_softc*) ;
 int hn_destroy_tx_data (struct hn_softc*) ;
 int hn_ifnet_detevent (struct hn_softc*,struct ifnet*) ;
 int hn_stop (struct hn_softc*,int) ;
 int hn_suspend_mgmt (struct hn_softc*) ;
 int hn_synth_detach (struct hn_softc*) ;
 int hn_tx_taskq_cnt ;
 int ** hn_tx_taskque ;
 int if_free (struct ifnet*) ;
 int ifaddr_event ;
 int ifmedia_removeall (int *) ;
 int ifnet_departure_event ;
 int ifnet_event ;
 int ifnet_link_event ;
 int rm_destroy (int *) ;
 int taskqueue_free (int *) ;
 scalar_t__ vmbus_chan_is_revoked (int ) ;
 int vmbus_chan_unset_orphan (int ) ;
 int vmbus_xact_ctx_destroy (int *) ;
 int vmbus_xact_ctx_orphan (int *) ;

__attribute__((used)) static int
hn_detach(device_t dev)
{
 struct hn_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->hn_ifp, *vf_ifp;

 if (sc->hn_xact != ((void*)0) && vmbus_chan_is_revoked(sc->hn_prichan)) {




  vmbus_xact_ctx_orphan(sc->hn_xact);
 }

 if (sc->hn_ifaddr_evthand != ((void*)0))
  EVENTHANDLER_DEREGISTER(ifaddr_event, sc->hn_ifaddr_evthand);
 if (sc->hn_ifnet_evthand != ((void*)0))
  EVENTHANDLER_DEREGISTER(ifnet_event, sc->hn_ifnet_evthand);
 if (sc->hn_ifnet_atthand != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(ether_ifattach_event,
      sc->hn_ifnet_atthand);
 }
 if (sc->hn_ifnet_dethand != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(ifnet_departure_event,
      sc->hn_ifnet_dethand);
 }
 if (sc->hn_ifnet_lnkhand != ((void*)0))
  EVENTHANDLER_DEREGISTER(ifnet_link_event, sc->hn_ifnet_lnkhand);

 vf_ifp = sc->hn_vf_ifp;
 __compiler_membar();
 if (vf_ifp != ((void*)0))
  hn_ifnet_detevent(sc, vf_ifp);

 if (device_is_attached(dev)) {
  HN_LOCK(sc);
  if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    hn_stop(sc, 1);





   hn_suspend_mgmt(sc);
   hn_synth_detach(sc);
  }
  HN_UNLOCK(sc);
  ether_ifdetach(ifp);
 }

 ifmedia_removeall(&sc->hn_media);
 hn_destroy_rx_data(sc);
 hn_destroy_tx_data(sc);

 if (sc->hn_tx_taskqs != ((void*)0) && sc->hn_tx_taskqs != hn_tx_taskque) {
  int i;

  for (i = 0; i < hn_tx_taskq_cnt; ++i)
   taskqueue_free(sc->hn_tx_taskqs[i]);
  free(sc->hn_tx_taskqs, M_DEVBUF);
 }
 taskqueue_free(sc->hn_mgmt_taskq0);
 if (sc->hn_vf_taskq != ((void*)0))
  taskqueue_free(sc->hn_vf_taskq);

 if (sc->hn_xact != ((void*)0)) {




  vmbus_chan_unset_orphan(sc->hn_prichan);
  vmbus_xact_ctx_destroy(sc->hn_xact);
 }

 if_free(ifp);

 HN_LOCK_DESTROY(sc);
 rm_destroy(&sc->hn_vf_lock);
 return (0);
}
