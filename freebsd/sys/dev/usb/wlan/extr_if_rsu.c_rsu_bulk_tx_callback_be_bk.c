
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct rsu_softc {int dummy; } ;


 int RSU_BULK_TX_BE_BK ;
 int rsu_bulk_tx_callback_sub (struct usb_xfer*,int ,int ) ;
 int rsu_start (struct rsu_softc*) ;
 struct rsu_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
rsu_bulk_tx_callback_be_bk(struct usb_xfer *xfer, usb_error_t error)
{
 struct rsu_softc *sc = usbd_xfer_softc(xfer);

 rsu_bulk_tx_callback_sub(xfer, error, RSU_BULK_TX_BE_BK);


 rsu_start(sc);
}
