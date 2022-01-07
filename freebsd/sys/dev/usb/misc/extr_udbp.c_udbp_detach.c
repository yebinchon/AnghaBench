
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {int * sc_bulk_in_buffer; int sc_xmitq_hipri; int sc_xmitq; int sc_mtx; int sc_xfer; int * sc_node; } ;
typedef int device_t ;


 int NG_BT_MBUFQ_DESTROY (int *) ;
 int NG_NODE_SET_PRIVATE (int *,int *) ;
 int UDBP_T_MAX ;
 struct udbp_softc* device_get_softc (int ) ;
 int m_freem (int *) ;
 int mtx_destroy (int *) ;
 int ng_rmnode_self (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
udbp_detach(device_t dev)
{
 struct udbp_softc *sc = device_get_softc(dev);



 if (sc->sc_node != ((void*)0)) {
  NG_NODE_SET_PRIVATE(sc->sc_node, ((void*)0));
  ng_rmnode_self(sc->sc_node);
  sc->sc_node = ((void*)0);
 }


 usbd_transfer_unsetup(sc->sc_xfer, UDBP_T_MAX);

 mtx_destroy(&sc->sc_mtx);



 NG_BT_MBUFQ_DESTROY(&sc->sc_xmitq);
 NG_BT_MBUFQ_DESTROY(&sc->sc_xmitq_hipri);



 if (sc->sc_bulk_in_buffer) {
  m_freem(sc->sc_bulk_in_buffer);
  sc->sc_bulk_in_buffer = ((void*)0);
 }
 return (0);
}
