
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;
struct urtw_softc {scalar_t__ sc_txtimer; } ;
struct urtw_data {int * ni; int * m; } ;


 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int ieee80211_tx_complete (int *,int *,int ) ;
 struct urtw_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
urtw_txeof(struct usb_xfer *xfer, struct urtw_data *data)
{
 struct urtw_softc *sc = usbd_xfer_softc(xfer);

 URTW_ASSERT_LOCKED(sc);

 if (data->m) {

  ieee80211_tx_complete(data->ni, data->m, 0);
  data->m = ((void*)0);
  data->ni = ((void*)0);
 }
 sc->sc_txtimer = 0;
}
