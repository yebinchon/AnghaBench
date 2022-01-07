
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int * uc_xfer; } ;
struct rtwn_softc {int dummy; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_N_TRANSFER ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int usbd_transfer_drain (int ) ;

__attribute__((used)) static void
rtwn_usb_abort_xfers(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);
 int i;

 RTWN_ASSERT_LOCKED(sc);


 RTWN_UNLOCK(sc);
 for (i = 0; i < RTWN_N_TRANSFER; i++)
  usbd_transfer_drain(uc->uc_xfer[i]);
 RTWN_LOCK(sc);
}
