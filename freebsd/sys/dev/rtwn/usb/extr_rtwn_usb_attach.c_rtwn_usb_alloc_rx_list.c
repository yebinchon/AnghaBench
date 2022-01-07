
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int uc_rx_buf_size; int * uc_rx; int uc_rx_inactive; int uc_rx_active; } ;
struct rtwn_softc {int dummy; } ;


 int RTWN_USB_RXBUFSZ_UNIT ;
 int RTWN_USB_RX_LIST_COUNT ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int rtwn_usb_alloc_list (struct rtwn_softc*,int *,int,int) ;

__attribute__((used)) static int
rtwn_usb_alloc_rx_list(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);
 int error, i;

 error = rtwn_usb_alloc_list(sc, uc->uc_rx, RTWN_USB_RX_LIST_COUNT,
     uc->uc_rx_buf_size * RTWN_USB_RXBUFSZ_UNIT);
 if (error != 0)
  return (error);

 STAILQ_INIT(&uc->uc_rx_active);
 STAILQ_INIT(&uc->uc_rx_inactive);

 for (i = 0; i < RTWN_USB_RX_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&uc->uc_rx_inactive, &uc->uc_rx[i], next);

 return (0);
}
