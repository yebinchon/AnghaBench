
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;
struct ieee80211com {int ic_ierrors; } ;
struct rsu_softc {struct ieee80211com sc_ic; } ;
struct rsu_data {scalar_t__ buf; struct rsu_softc* sc; } ;
struct r92s_rx_stat {int rxdw1; } ;
struct mbuf {int dummy; } ;


 int RSU_DEBUG_RX ;
 int RSU_DPRINTF (struct rsu_softc*,int ,char*,int) ;
 scalar_t__ __predict_false (int) ;
 int counter_u64_add (int ,int) ;
 int le32toh (int ) ;
 int rsu_rx_multi_event (struct rsu_softc*,scalar_t__,int) ;
 struct mbuf* rsu_rx_multi_frame (struct rsu_softc*,scalar_t__,int) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static struct mbuf *
rsu_rxeof(struct usb_xfer *xfer, struct rsu_data *data)
{
 struct rsu_softc *sc = data->sc;
 struct ieee80211com *ic = &sc->sc_ic;
 struct r92s_rx_stat *stat;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 if (__predict_false(len < sizeof(*stat))) {
  RSU_DPRINTF(sc, RSU_DEBUG_RX, "xfer too short %d\n", len);
  counter_u64_add(ic->ic_ierrors, 1);
  return (((void*)0));
 }

 stat = (struct r92s_rx_stat *)data->buf;
 if ((le32toh(stat->rxdw1) & 0x1ff) == 0x1ff) {
  rsu_rx_multi_event(sc, data->buf, len);

  return (((void*)0));
 } else
  return (rsu_rx_multi_frame(sc, data->buf, len));
}
