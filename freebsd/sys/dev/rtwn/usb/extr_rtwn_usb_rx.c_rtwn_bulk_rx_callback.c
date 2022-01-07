
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int ic_ierrors; } ;
struct rtwn_softc {struct ieee80211com sc_ic; } ;
struct rtwn_usb_softc {int uc_rx_inactive; int uc_rx_active; struct rtwn_softc uc_sc; } ;
struct rtwn_data {int buf; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_node {int dummy; } ;


 int KASSERT (int ,char*) ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct rtwn_data*,struct mbuf*) ;
 int STAILQ_REMOVE_HEAD (int *,struct mbuf*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int counter_u64_add (int ,int) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_input_mimo (struct ieee80211_node*,struct mbuf*) ;
 int ieee80211_input_mimo_all (struct ieee80211com*,struct mbuf*) ;
 struct mbuf* rtwn_report_intr (struct rtwn_usb_softc*,struct usb_xfer*,struct rtwn_data*) ;
 struct ieee80211_node* rtwn_rx_frame (struct rtwn_softc*,struct mbuf*) ;
 int rtwn_start (struct rtwn_softc*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct rtwn_usb_softc* usbd_xfer_softc (struct usb_xfer*) ;

void
rtwn_bulk_rx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct rtwn_usb_softc *uc = usbd_xfer_softc(xfer);
 struct rtwn_softc *sc = &uc->uc_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni;
 struct mbuf *m = ((void*)0), *next;
 struct rtwn_data *data;

 RTWN_ASSERT_LOCKED(sc);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  data = STAILQ_FIRST(&uc->uc_rx_active);
  if (data == ((void*)0))
   goto tr_setup;
  STAILQ_REMOVE_HEAD(&uc->uc_rx_active, next);
  m = rtwn_report_intr(uc, xfer, data);
  STAILQ_INSERT_TAIL(&uc->uc_rx_inactive, data, next);

 case 129:
tr_setup:
  data = STAILQ_FIRST(&uc->uc_rx_inactive);
  if (data == ((void*)0)) {
   KASSERT(m == ((void*)0), ("mbuf isn't NULL"));
   goto finish;
  }
  STAILQ_REMOVE_HEAD(&uc->uc_rx_inactive, next);
  STAILQ_INSERT_TAIL(&uc->uc_rx_active, data, next);
  usbd_xfer_set_frame_data(xfer, 0, data->buf,
      usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);






  while (m != ((void*)0)) {
   next = m->m_nextpkt;
   m->m_nextpkt = ((void*)0);

   ni = rtwn_rx_frame(sc, m);

   RTWN_UNLOCK(sc);

   if (ni != ((void*)0)) {
    (void)ieee80211_input_mimo(ni, m);
    ieee80211_free_node(ni);
   } else {
    (void)ieee80211_input_mimo_all(ic, m);
   }
   RTWN_LOCK(sc);
   m = next;
  }
  break;
 default:

  data = STAILQ_FIRST(&uc->uc_rx_active);
  if (data != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&uc->uc_rx_active, next);
   STAILQ_INSERT_TAIL(&uc->uc_rx_inactive, data, next);
  }
  if (error != USB_ERR_CANCELLED) {


   usbd_xfer_set_stall(xfer);
   counter_u64_add(ic->ic_ierrors, 1);
   goto tr_setup;
  }
  break;
 }
finish:

 rtwn_start(sc);
}
