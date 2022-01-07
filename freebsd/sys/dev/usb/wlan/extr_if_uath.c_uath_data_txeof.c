
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;
struct uath_softc {scalar_t__ sc_tx_timer; } ;
struct uath_data {int * ni; int * m; } ;


 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int ieee80211_tx_complete (int *,int *,int ) ;
 struct uath_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uath_data_txeof(struct usb_xfer *xfer, struct uath_data *data)
{
 struct uath_softc *sc = usbd_xfer_softc(xfer);

 UATH_ASSERT_LOCKED(sc);

 if (data->m) {

  ieee80211_tx_complete(data->ni, data->m, 0);
  data->m = ((void*)0);
  data->ni = ((void*)0);
 }
 sc->sc_tx_timer = 0;
}
