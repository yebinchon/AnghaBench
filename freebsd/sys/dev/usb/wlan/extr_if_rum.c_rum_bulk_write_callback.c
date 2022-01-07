
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct rum_tx_radiotap_header {int wt_antenna; int wt_rate; int wt_flags; } ;
struct rum_tx_data {int rate; TYPE_1__* ni; int desc; struct mbuf* m; } ;
struct TYPE_6__ {int ic_oerrors; } ;
struct rum_softc {int sc_dev; TYPE_3__ sc_ic; int tx_ant; struct rum_tx_radiotap_header sc_txtap; int tx_q; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_4__ {struct ieee80211vap* ni_vap; } ;


 int DPRINTFN (int,char*,int,...) ;
 int MCLBYTES ;
 int RT2573_TX_DESC_SIZE ;
 struct rum_tx_data* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int USB_ERR_CANCELLED ;
 int USB_ERR_TIMEOUT ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_tx (struct ieee80211vap*,struct mbuf*) ;
 int next ;
 int rum_start (struct rum_softc*) ;
 int rum_tx_free (struct rum_tx_data*,int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,int *,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 struct rum_tx_data* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,unsigned int) ;
 int usbd_xfer_set_priv (struct usb_xfer*,struct rum_tx_data*) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct rum_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
rum_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct rum_softc *sc = usbd_xfer_softc(xfer);
 struct ieee80211vap *vap;
 struct rum_tx_data *data;
 struct mbuf *m;
 struct usb_page_cache *pc;
 unsigned int len;
 int actlen, sumlen;

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete, %d bytes\n", actlen);


  data = usbd_xfer_get_priv(xfer);
  rum_tx_free(data, 0);
  usbd_xfer_set_priv(xfer, ((void*)0));


 case 129:
tr_setup:
  data = STAILQ_FIRST(&sc->tx_q);
  if (data) {
   STAILQ_REMOVE_HEAD(&sc->tx_q, next);
   m = data->m;

   if (m->m_pkthdr.len > (int)(MCLBYTES + RT2573_TX_DESC_SIZE)) {
    DPRINTFN(0, "data overflow, %u bytes\n",
        m->m_pkthdr.len);
    m->m_pkthdr.len = (MCLBYTES + RT2573_TX_DESC_SIZE);
   }
   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &data->desc, RT2573_TX_DESC_SIZE);
   usbd_m_copy_in(pc, RT2573_TX_DESC_SIZE, m, 0,
       m->m_pkthdr.len);

   vap = data->ni->ni_vap;
   if (ieee80211_radiotap_active_vap(vap)) {
    struct rum_tx_radiotap_header *tap = &sc->sc_txtap;

    tap->wt_flags = 0;
    tap->wt_rate = data->rate;
    tap->wt_antenna = sc->tx_ant;

    ieee80211_radiotap_tx(vap, m);
   }


   len = (RT2573_TX_DESC_SIZE + m->m_pkthdr.len + 3) & ~3;
   if ((len % 64) == 0)
    len += 4;

   DPRINTFN(11, "sending frame len=%u xferlen=%u\n",
       m->m_pkthdr.len, len);

   usbd_xfer_set_frame_len(xfer, 0, len);
   usbd_xfer_set_priv(xfer, data);

   usbd_transfer_submit(xfer);
  }
  rum_start(sc);
  break;

 default:
  DPRINTFN(11, "transfer error, %s\n",
      usbd_errstr(error));

  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
  data = usbd_xfer_get_priv(xfer);
  if (data != ((void*)0)) {
   rum_tx_free(data, error);
   usbd_xfer_set_priv(xfer, ((void*)0));
  }

  if (error != USB_ERR_CANCELLED) {
   if (error == USB_ERR_TIMEOUT)
    device_printf(sc->sc_dev, "device timeout\n");






   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
