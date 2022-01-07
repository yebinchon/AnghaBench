
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {int sc_mtx; int * sc_hook; int * sc_bulk_in_buffer; int sc_xmitq_hipri; int sc_xmitq; int * sc_xfer; } ;
typedef int * hook_p ;


 int EINVAL ;
 int NG_BT_MBUFQ_DRAIN (int *) ;
 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 size_t UDBP_T_RD ;
 size_t UDBP_T_RD_CS ;
 size_t UDBP_T_WR ;
 size_t UDBP_T_WR_CS ;
 int m_freem (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_rmnode_self (int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static int
ng_udbp_disconnect(hook_p hook)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 int error = 0;

 if (sc != ((void*)0)) {

  mtx_lock(&sc->sc_mtx);

  if (hook != sc->sc_hook) {
   error = EINVAL;
  } else {


   usbd_transfer_stop(sc->sc_xfer[UDBP_T_RD_CS]);
   usbd_transfer_stop(sc->sc_xfer[UDBP_T_RD]);


   usbd_transfer_stop(sc->sc_xfer[UDBP_T_WR_CS]);
   usbd_transfer_stop(sc->sc_xfer[UDBP_T_WR]);


   NG_BT_MBUFQ_DRAIN(&sc->sc_xmitq);
   NG_BT_MBUFQ_DRAIN(&sc->sc_xmitq_hipri);

   if (sc->sc_bulk_in_buffer) {
    m_freem(sc->sc_bulk_in_buffer);
    sc->sc_bulk_in_buffer = ((void*)0);
   }
   sc->sc_hook = ((void*)0);
  }

  mtx_unlock(&sc->sc_mtx);
 }
 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
     && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));

 return (error);
}
