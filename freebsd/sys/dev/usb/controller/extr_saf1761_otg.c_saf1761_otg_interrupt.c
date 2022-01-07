
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct saf1761_otg_softc {scalar_t__ sc_xfer_complete; int sc_bus; TYPE_1__ sc_flags; } ;


 int DPRINTF (char*,int,int,int) ;
 int SAF1761_DCINTERRUPT_THREAD_IRQ ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_ADDRESS ;
 int SOTG_ADDRESS_ENABLE ;
 int SOTG_DCINTERRUPT ;
 int SOTG_DCINTERRUPT_IEBRST ;
 int SOTG_DCINTERRUPT_IERESM ;
 int SOTG_DCINTERRUPT_IESUSP ;
 int SOTG_DCINTERRUPT_IEVBUS ;
 int SOTG_FRAME_NUM ;
 int SOTG_FRINDEX ;
 int SOTG_UNLOCK_DEVICE ;
 int SOTG_UNLOCK_DEVICE_CODE ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int saf1761_otg_interrupt_complete_locked (struct saf1761_otg_softc*) ;
 int saf1761_otg_root_intr (struct saf1761_otg_softc*) ;
 int saf1761_otg_update_vbus (struct saf1761_otg_softc*) ;
 int saf1761_otg_wait_suspend (struct saf1761_otg_softc*,int) ;

void
saf1761_otg_interrupt(void *arg)
{
 struct saf1761_otg_softc *sc = arg;
 uint32_t status;

 USB_BUS_LOCK(&sc->sc_bus);
 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 status = SAF1761_READ_LE_4(sc, SOTG_DCINTERRUPT) &
     SAF1761_DCINTERRUPT_THREAD_IRQ;


 SAF1761_WRITE_LE_4(sc, SOTG_DCINTERRUPT, status);

 DPRINTF("DCINTERRUPT=0x%08x SOF=0x%08x "
     "FRINDEX=0x%08x\n", status,
     SAF1761_READ_LE_4(sc, SOTG_FRAME_NUM),
     SAF1761_READ_LE_4(sc, SOTG_FRINDEX));


 if (status & SOTG_DCINTERRUPT_IEVBUS)
  saf1761_otg_update_vbus(sc);

 if (status & SOTG_DCINTERRUPT_IEBRST) {

  SAF1761_WRITE_LE_4(sc, SOTG_UNLOCK_DEVICE,
      SOTG_UNLOCK_DEVICE_CODE);


  SAF1761_WRITE_LE_4(sc, SOTG_ADDRESS,
      SOTG_ADDRESS_ENABLE);

  sc->sc_flags.status_bus_reset = 1;
  sc->sc_flags.status_suspend = 0;
  sc->sc_flags.change_suspend = 0;
  sc->sc_flags.change_connect = 1;


  saf1761_otg_wait_suspend(sc, 1);

  saf1761_otg_root_intr(sc);
 }





 if (status & SOTG_DCINTERRUPT_IERESM) {

  SAF1761_WRITE_LE_4(sc, SOTG_UNLOCK_DEVICE,
      SOTG_UNLOCK_DEVICE_CODE);

  if (sc->sc_flags.status_suspend) {
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 1;

   saf1761_otg_wait_suspend(sc, 1);

   saf1761_otg_root_intr(sc);
  }
 } else if (status & SOTG_DCINTERRUPT_IESUSP) {
  if (!sc->sc_flags.status_suspend) {
   sc->sc_flags.status_suspend = 1;
   sc->sc_flags.change_suspend = 1;

   saf1761_otg_wait_suspend(sc, 0);

   saf1761_otg_root_intr(sc);
  }
 }

 if (sc->sc_xfer_complete != 0) {
  sc->sc_xfer_complete = 0;


  saf1761_otg_interrupt_complete_locked(sc);
 }
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
