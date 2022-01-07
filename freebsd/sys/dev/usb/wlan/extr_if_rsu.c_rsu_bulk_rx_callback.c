
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int ic_ierrors; } ;
struct rsu_softc {int sc_rx_inactive; int sc_rx_active; struct ieee80211com sc_ic; } ;
struct rsu_data {int buf; } ;
struct mbuf {int m_flags; struct mbuf* m_next; } ;
struct ieee80211_node {int ni_flags; } ;


 int IEEE80211_NODE_HT ;
 int KASSERT (int ,char*) ;
 int M_AMPDU ;
 int RSU_ASSERT_LOCKED (struct rsu_softc*) ;
 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 struct rsu_data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct rsu_data*,struct mbuf*) ;
 int STAILQ_REMOVE_HEAD (int *,struct mbuf*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int counter_u64_add (int ,int) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_input_mimo (struct ieee80211_node*,struct mbuf*) ;
 int ieee80211_input_mimo_all (struct ieee80211com*,struct mbuf*) ;
 struct ieee80211_node* rsu_rx_frame (struct rsu_softc*,struct mbuf*) ;
 struct mbuf* rsu_rxeof (struct usb_xfer*,struct rsu_data*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct rsu_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
rsu_bulk_rx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct rsu_softc *sc = usbd_xfer_softc(xfer);
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni;
 struct mbuf *m = ((void*)0), *next;
 struct rsu_data *data;

 RSU_ASSERT_LOCKED(sc);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  data = STAILQ_FIRST(&sc->sc_rx_active);
  if (data == ((void*)0))
   goto tr_setup;
  STAILQ_REMOVE_HEAD(&sc->sc_rx_active, next);
  m = rsu_rxeof(xfer, data);
  STAILQ_INSERT_TAIL(&sc->sc_rx_inactive, data, next);

 case 129:
tr_setup:
  data = STAILQ_FIRST(&sc->sc_rx_inactive);
  if (data == ((void*)0)) {
   KASSERT(m == ((void*)0), ("mbuf isn't NULL"));
   return;
  }
  STAILQ_REMOVE_HEAD(&sc->sc_rx_inactive, next);
  STAILQ_INSERT_TAIL(&sc->sc_rx_active, data, next);
  usbd_xfer_set_frame_data(xfer, 0, data->buf,
      usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);





  while (m != ((void*)0)) {
   next = m->m_next;
   m->m_next = ((void*)0);

   ni = rsu_rx_frame(sc, m);
   RSU_UNLOCK(sc);

   if (ni != ((void*)0)) {
    if (ni->ni_flags & IEEE80211_NODE_HT)
     m->m_flags |= M_AMPDU;
    (void)ieee80211_input_mimo(ni, m);
    ieee80211_free_node(ni);
   } else
    (void)ieee80211_input_mimo_all(ic, m);

   RSU_LOCK(sc);
   m = next;
  }
  break;
 default:

  data = STAILQ_FIRST(&sc->sc_rx_active);
  if (data != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&sc->sc_rx_active, next);
   STAILQ_INSERT_TAIL(&sc->sc_rx_inactive, data, next);
  }
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   counter_u64_add(ic->ic_ierrors, 1);
   goto tr_setup;
  }
  break;
 }

}
