
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ural_tx_radiotap_header {int wt_antenna; int wt_rate; int wt_flags; } ;
struct ural_tx_data {int rate; TYPE_1__* ni; int desc; struct mbuf* m; } ;
struct ural_softc {int sc_dev; int tx_ant; struct ural_tx_radiotap_header sc_txtap; int tx_q; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_3__ {struct ieee80211vap* ni_vap; } ;


 int DPRINTFN (int,char*,int,...) ;
 int RAL_FRAME_SIZE ;
 int RAL_TX_DESC_SIZE ;
 struct ural_tx_data* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int USB_ERR_STALLED ;
 int USB_ERR_TIMEOUT ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int device_printf (int ,char*) ;
 int ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_tx (struct ieee80211vap*,struct mbuf*) ;
 int next ;
 int ural_start (struct ural_softc*) ;
 int ural_tx_free (struct ural_tx_data*,int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,int *,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 struct ural_tx_data* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_priv (struct usb_xfer*,struct ural_tx_data*) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ural_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ural_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ural_softc *sc = usbd_xfer_softc(xfer);
 struct ieee80211vap *vap;
 struct ural_tx_data *data;
 struct mbuf *m;
 struct usb_page_cache *pc;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete, %d bytes\n", len);


  data = usbd_xfer_get_priv(xfer);
  ural_tx_free(data, 0);
  usbd_xfer_set_priv(xfer, ((void*)0));


 case 129:
tr_setup:
  data = STAILQ_FIRST(&sc->tx_q);
  if (data) {
   STAILQ_REMOVE_HEAD(&sc->tx_q, next);
   m = data->m;

   if (m->m_pkthdr.len > (int)(RAL_FRAME_SIZE + RAL_TX_DESC_SIZE)) {
    DPRINTFN(0, "data overflow, %u bytes\n",
        m->m_pkthdr.len);
    m->m_pkthdr.len = (RAL_FRAME_SIZE + RAL_TX_DESC_SIZE);
   }
   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &data->desc, RAL_TX_DESC_SIZE);
   usbd_m_copy_in(pc, RAL_TX_DESC_SIZE, m, 0,
       m->m_pkthdr.len);

   vap = data->ni->ni_vap;
   if (ieee80211_radiotap_active_vap(vap)) {
    struct ural_tx_radiotap_header *tap = &sc->sc_txtap;

    tap->wt_flags = 0;
    tap->wt_rate = data->rate;
    tap->wt_antenna = sc->tx_ant;

    ieee80211_radiotap_tx(vap, m);
   }


   len = (RAL_TX_DESC_SIZE + m->m_pkthdr.len + 1) & ~1;
   if ((len % 64) == 0)
    len += 2;

   DPRINTFN(11, "sending frame len=%u xferlen=%u\n",
       m->m_pkthdr.len, len);

   usbd_xfer_set_frame_len(xfer, 0, len);
   usbd_xfer_set_priv(xfer, data);

   usbd_transfer_submit(xfer);
  }
  ural_start(sc);
  break;

 default:
  DPRINTFN(11, "transfer error, %s\n",
      usbd_errstr(error));

  data = usbd_xfer_get_priv(xfer);
  if (data != ((void*)0)) {
   ural_tx_free(data, error);
   usbd_xfer_set_priv(xfer, ((void*)0));
  }

  if (error == USB_ERR_STALLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  if (error == USB_ERR_TIMEOUT)
   device_printf(sc->sc_dev, "device timeout\n");
  break;
 }
}
