
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int uc_tx_pending; int uc_tx_inactive; int uc_tx_active; int uc_tx; } ;
struct rtwn_softc {int dummy; } ;


 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int RTWN_USB_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int rtwn_usb_free_list (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static void
rtwn_usb_free_tx_list(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 rtwn_usb_free_list(sc, uc->uc_tx, RTWN_USB_TX_LIST_COUNT);

 STAILQ_INIT(&uc->uc_tx_active);
 STAILQ_INIT(&uc->uc_tx_inactive);
 STAILQ_INIT(&uc->uc_tx_pending);
}
