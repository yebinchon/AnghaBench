
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int * uc_tx; int uc_tx_inactive; int uc_tx_pending; int uc_tx_active; } ;
struct rtwn_softc {int dummy; } ;


 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int RTWN_USB_TXBUFSZ ;
 int RTWN_USB_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int rtwn_usb_alloc_list (struct rtwn_softc*,int *,int,int ) ;

__attribute__((used)) static int
rtwn_usb_alloc_tx_list(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);
 int error, i;

 error = rtwn_usb_alloc_list(sc, uc->uc_tx, RTWN_USB_TX_LIST_COUNT,
     RTWN_USB_TXBUFSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&uc->uc_tx_active);
 STAILQ_INIT(&uc->uc_tx_inactive);
 STAILQ_INIT(&uc->uc_tx_pending);

 for (i = 0; i < RTWN_USB_TX_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&uc->uc_tx_inactive, &uc->uc_tx[i], next);

 return (0);
}
