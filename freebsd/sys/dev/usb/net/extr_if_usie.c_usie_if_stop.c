
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_mtx; int * sc_if_xfer; int sc_if_sync_ch; } ;


 int USIE_CNS_ID_STOP ;
 int USIE_CNS_OB_LINK_UPDATE ;
 int USIE_HIP_DOWN ;
 size_t USIE_IF_RX ;
 size_t USIE_IF_STATUS ;
 size_t USIE_IF_TX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_drain (int *) ;
 int usbd_transfer_stop (int ) ;
 int usie_cns_req (struct usie_softc*,int ,int ) ;
 int usie_if_cmd (struct usie_softc*,int ) ;

__attribute__((used)) static void
usie_if_stop(struct usie_softc *sc)
{
 usb_callout_drain(&sc->sc_if_sync_ch);

 mtx_lock(&sc->sc_mtx);


 usie_cns_req(sc, USIE_CNS_ID_STOP, USIE_CNS_OB_LINK_UPDATE);

 usbd_transfer_stop(sc->sc_if_xfer[USIE_IF_TX]);
 usbd_transfer_stop(sc->sc_if_xfer[USIE_IF_RX]);
 usbd_transfer_stop(sc->sc_if_xfer[USIE_IF_STATUS]);


 usie_if_cmd(sc, USIE_HIP_DOWN);

 mtx_unlock(&sc->sc_mtx);
}
