
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {int bus_mtx; } ;
struct TYPE_8__ {int sc_isreset; TYPE_1__ sc_bus; } ;
typedef TYPE_2__ uhci_softc_t ;


 int DELAY (int) ;
 int DPRINTFN (int,char*,int,...) ;
 int UHCI_PORTSC1 ;
 int UHCI_PORTSC2 ;
 int UHCI_PORTSC_CCS ;
 int UHCI_PORTSC_CSC ;
 int UHCI_PORTSC_PE ;
 int UHCI_PORTSC_POEDC ;
 int UHCI_PORTSC_PR ;
 int UREAD2 (TYPE_2__*,int) ;
 int URWMASK (int) ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_TIMEOUT ;
 int USB_MS_TO_TICKS (int ) ;
 int UWRITE2 (TYPE_2__*,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhci_restart (TYPE_2__*) ;
 int usb_pause_mtx (int *,int ) ;
 int usb_port_reset_delay ;
 int usb_port_root_reset_delay ;

__attribute__((used)) static usb_error_t
uhci_portreset(uhci_softc_t *sc, uint16_t index)
{
 uint16_t port;
 uint16_t x;
 uint8_t lim;

 if (index == 1)
  port = UHCI_PORTSC1;
 else if (index == 2)
  port = UHCI_PORTSC2;
 else
  return (USB_ERR_IOERROR);





 uhci_restart(sc);

 x = URWMASK(UREAD2(sc, port));
 UWRITE2(sc, port, x | UHCI_PORTSC_PR);

 usb_pause_mtx(&sc->sc_bus.bus_mtx,
     USB_MS_TO_TICKS(usb_port_root_reset_delay));

 DPRINTFN(4, "uhci port %d reset, status0 = 0x%04x\n",
     index, UREAD2(sc, port));

 x = URWMASK(UREAD2(sc, port));
 UWRITE2(sc, port, x & ~UHCI_PORTSC_PR);


 mtx_unlock(&sc->sc_bus.bus_mtx);





 DELAY(100);

 mtx_lock(&sc->sc_bus.bus_mtx);

 DPRINTFN(4, "uhci port %d reset, status1 = 0x%04x\n",
     index, UREAD2(sc, port));

 x = URWMASK(UREAD2(sc, port));
 UWRITE2(sc, port, x | UHCI_PORTSC_PE);

 for (lim = 0; lim < 12; lim++) {

  usb_pause_mtx(&sc->sc_bus.bus_mtx,
      USB_MS_TO_TICKS(usb_port_reset_delay));

  x = UREAD2(sc, port);

  DPRINTFN(4, "uhci port %d iteration %u, status = 0x%04x\n",
      index, lim, x);

  if (!(x & UHCI_PORTSC_CCS)) {
   DPRINTFN(4, "uhci port %d loop %u, device detached\n",
       index, lim);
   goto done;
  }
  if (x & (UHCI_PORTSC_POEDC | UHCI_PORTSC_CSC)) {






   UWRITE2(sc, port, URWMASK(x) |
       (x & (UHCI_PORTSC_POEDC | UHCI_PORTSC_CSC)));
   continue;
  }
  if (x & UHCI_PORTSC_PE) {

   goto done;
  }
  UWRITE2(sc, port, URWMASK(x) | UHCI_PORTSC_PE);
 }

 DPRINTFN(2, "uhci port %d reset timed out\n", index);
 return (USB_ERR_TIMEOUT);

done:
 DPRINTFN(4, "uhci port %d reset, status2 = 0x%04x\n",
     index, UREAD2(sc, port));

 sc->sc_isreset = 1;
 return (USB_ERR_NORMAL_COMPLETION);
}
