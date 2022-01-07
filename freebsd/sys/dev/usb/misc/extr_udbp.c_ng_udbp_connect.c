
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {int sc_flags; int sc_mtx; int * sc_xfer; } ;
typedef int hook_p ;


 int NG_HOOK_FORCE_QUEUE (int ) ;
 int NG_HOOK_NODE (int ) ;
 int NG_HOOK_PEER (int ) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 int UDBP_FLAG_READ_STALL ;
 int UDBP_FLAG_WRITE_STALL ;
 size_t UDBP_T_RD ;
 size_t UDBP_T_WR ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ng_udbp_connect(hook_p hook)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));


 NG_HOOK_FORCE_QUEUE(NG_HOOK_PEER(hook));

 mtx_lock(&sc->sc_mtx);

 sc->sc_flags |= (UDBP_FLAG_READ_STALL |
     UDBP_FLAG_WRITE_STALL);


 usbd_transfer_start(sc->sc_xfer[UDBP_T_RD]);


 usbd_transfer_start(sc->sc_xfer[UDBP_T_WR]);

 mtx_unlock(&sc->sc_mtx);

 return (0);
}
