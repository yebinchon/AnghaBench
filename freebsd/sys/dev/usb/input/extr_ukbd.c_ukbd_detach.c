
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kb_flags; } ;
struct ukbd_softc {int sc_flags; int sc_callout; int * sc_xfer; TYPE_1__ sc_kbd; int sc_evdev; int sc_ndata; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 scalar_t__ KBD_IS_CONFIGURED (TYPE_1__*) ;
 int UKBD_FLAG_ATTACHED ;
 int UKBD_FLAG_GONE ;
 size_t UKBD_INTR_DT_0 ;
 size_t UKBD_INTR_DT_1 ;
 int UKBD_LOCK_ASSERT () ;
 int UKBD_N_TRANSFER ;
 int device_get_nameunit (int ) ;
 struct ukbd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int evdev_free (int ) ;
 int kbd_detach (TYPE_1__*) ;
 int kbd_unregister (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int ukbd_disable (TYPE_1__*) ;
 int ukbd_interrupt (struct ukbd_softc*) ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usbd_transfer_stop (int ) ;
 int usbd_transfer_unsetup (int *,int ) ;

__attribute__((used)) static int
ukbd_detach(device_t dev)
{
 struct ukbd_softc *sc = device_get_softc(dev);
 int error;

 UKBD_LOCK_ASSERT();

 DPRINTF("\n");

 sc->sc_flags |= UKBD_FLAG_GONE;

 usb_callout_stop(&sc->sc_callout);


 if (sc->sc_flags & UKBD_FLAG_ATTACHED) {

  usbd_transfer_stop(sc->sc_xfer[UKBD_INTR_DT_0]);
  usbd_transfer_stop(sc->sc_xfer[UKBD_INTR_DT_1]);


  memset(&sc->sc_ndata, 0, sizeof(sc->sc_ndata));


  ukbd_interrupt(sc);
 }

 ukbd_disable(&sc->sc_kbd);
 if (KBD_IS_CONFIGURED(&sc->sc_kbd)) {
  error = kbd_unregister(&sc->sc_kbd);
  if (error) {

   device_printf(dev, "WARNING: kbd_unregister() "
       "returned non-zero! (ignored)\n");
  }
 }
 sc->sc_kbd.kb_flags = 0;

 usbd_transfer_unsetup(sc->sc_xfer, UKBD_N_TRANSFER);

 usb_callout_drain(&sc->sc_callout);

 DPRINTF("%s: disconnected\n",
     device_get_nameunit(dev));

 return (0);
}
