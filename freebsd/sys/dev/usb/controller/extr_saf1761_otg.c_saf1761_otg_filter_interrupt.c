
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct saf1761_otg_softc {int* sc_host_async_busy_map; int* sc_host_intr_busy_map; int* sc_host_isoc_busy_map; scalar_t__ sc_xfer_complete; int sc_bus; } ;


 int DPRINTFN (int,char*,int,int) ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int SAF1761_DCINTERRUPT_THREAD_IRQ ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_ATL_PTD_DONE_PTD ;
 int SOTG_DCINTERRUPT ;
 int SOTG_DCINTERRUPT_IEPSOF ;
 int SOTG_HCINTERRUPT ;
 int SOTG_INT_PTD_DONE_PTD ;
 int SOTG_ISO_PTD_DONE_PTD ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int saf1761_otg_enable_psof (struct saf1761_otg_softc*,int ) ;
 int saf1761_otg_interrupt_poll_locked (struct saf1761_otg_softc*) ;

int
saf1761_otg_filter_interrupt(void *arg)
{
 struct saf1761_otg_softc *sc = arg;
 int retval = FILTER_HANDLED;
 uint32_t hcstat;
 uint32_t status;

 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 hcstat = SAF1761_READ_LE_4(sc, SOTG_HCINTERRUPT);

 SAF1761_WRITE_LE_4(sc, SOTG_HCINTERRUPT, hcstat);

 status = SAF1761_READ_LE_4(sc, SOTG_DCINTERRUPT);

 SAF1761_WRITE_LE_4(sc, SOTG_DCINTERRUPT,
     status & ~SAF1761_DCINTERRUPT_THREAD_IRQ);

 (void) SAF1761_READ_LE_4(sc, SOTG_ATL_PTD_DONE_PTD);
 (void) SAF1761_READ_LE_4(sc, SOTG_INT_PTD_DONE_PTD);
 (void) SAF1761_READ_LE_4(sc, SOTG_ISO_PTD_DONE_PTD);

 DPRINTFN(9, "HCINTERRUPT=0x%08x DCINTERRUPT=0x%08x\n", hcstat, status);

 if (status & SOTG_DCINTERRUPT_IEPSOF) {
  if ((sc->sc_host_async_busy_map[1] | sc->sc_host_async_busy_map[0] |
       sc->sc_host_intr_busy_map[1] | sc->sc_host_intr_busy_map[0] |
       sc->sc_host_isoc_busy_map[1] | sc->sc_host_isoc_busy_map[0]) != 0) {

   retval = FILTER_SCHEDULE_THREAD;

   sc->sc_host_async_busy_map[1] = sc->sc_host_async_busy_map[0];
   sc->sc_host_async_busy_map[0] = 0;

   sc->sc_host_intr_busy_map[1] = sc->sc_host_intr_busy_map[0];
   sc->sc_host_intr_busy_map[0] = 0;

   sc->sc_host_isoc_busy_map[1] = sc->sc_host_isoc_busy_map[0];
   sc->sc_host_isoc_busy_map[0] = 0;
  } else {

   saf1761_otg_enable_psof(sc, 0);
  }
 }

 if (status & SAF1761_DCINTERRUPT_THREAD_IRQ)
  retval = FILTER_SCHEDULE_THREAD;


 saf1761_otg_interrupt_poll_locked(sc);

 if (sc->sc_xfer_complete != 0)
  retval = FILTER_SCHEDULE_THREAD;

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);

 return (retval);
}
