
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubt_softc {int sc_ng_mtx; int sc_if_mtx; int sc_scoq; int sc_aclq; int sc_cmdq; int sc_xfer; int sc_task; int * sc_node; } ;
typedef int * node_p ;
typedef int device_t ;


 int NG_BT_MBUFQ_DESTROY (int *) ;
 int NG_NODE_REALLY_DIE (int *) ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 int UBT_N_TRANSFER ;
 struct ubt_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int ng_rmnode_self (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;
 int usbd_transfer_unsetup (int ,int ) ;

int
ubt_detach(device_t dev)
{
 struct ubt_softc *sc = device_get_softc(dev);
 node_p node = sc->sc_node;


 if (node != ((void*)0)) {
  sc->sc_node = ((void*)0);
  NG_NODE_REALLY_DIE(node);
  ng_rmnode_self(node);
 }


 taskqueue_drain(taskqueue_swi, &sc->sc_task);


 usbd_transfer_unsetup(sc->sc_xfer, UBT_N_TRANSFER);


 UBT_NG_LOCK(sc);
 NG_BT_MBUFQ_DESTROY(&sc->sc_cmdq);
 NG_BT_MBUFQ_DESTROY(&sc->sc_aclq);
 NG_BT_MBUFQ_DESTROY(&sc->sc_scoq);
 UBT_NG_UNLOCK(sc);

 mtx_destroy(&sc->sc_if_mtx);
 mtx_destroy(&sc->sc_ng_mtx);

 return (0);
}
