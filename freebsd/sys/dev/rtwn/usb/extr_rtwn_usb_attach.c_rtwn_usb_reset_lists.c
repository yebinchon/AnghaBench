
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int uc_tx_pending; int uc_tx_active; } ;
struct rtwn_softc {scalar_t__ qfullmsk; } ;
struct ieee80211vap {int dummy; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int rtwn_usb_reset_rx_list (struct rtwn_usb_softc*) ;
 int rtwn_usb_reset_tx_list (struct rtwn_usb_softc*,int *,struct ieee80211vap*) ;

__attribute__((used)) static void
rtwn_usb_reset_lists(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 RTWN_ASSERT_LOCKED(sc);

 rtwn_usb_reset_tx_list(uc, &uc->uc_tx_active, vap);
 rtwn_usb_reset_tx_list(uc, &uc->uc_tx_pending, vap);
 if (vap == ((void*)0)) {
  rtwn_usb_reset_rx_list(uc);
  sc->qfullmsk = 0;
 }
}
