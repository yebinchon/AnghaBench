
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int uc_rx_inactive; int uc_rx_active; scalar_t__ uc_rx_off; scalar_t__ uc_rx_stat_len; int uc_rx; } ;
struct rtwn_softc {int dummy; } ;


 int RTWN_USB_RX_LIST_COUNT ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int STAILQ_INIT (int *) ;
 int rtwn_usb_free_list (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static void
rtwn_usb_free_rx_list(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 rtwn_usb_free_list(sc, uc->uc_rx, RTWN_USB_RX_LIST_COUNT);

 uc->uc_rx_stat_len = 0;
 uc->uc_rx_off = 0;

 STAILQ_INIT(&uc->uc_rx_active);
 STAILQ_INIT(&uc->uc_rx_inactive);
}
