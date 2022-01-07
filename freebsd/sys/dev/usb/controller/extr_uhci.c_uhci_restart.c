
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int bus_mtx; } ;
struct TYPE_8__ {int pframes_pc; } ;
struct TYPE_9__ {TYPE_5__ sc_bus; TYPE_1__ sc_hw; } ;
typedef TYPE_2__ uhci_softc_t ;
struct usb_page_search {int physaddr; } ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int UHCICMD (TYPE_2__*,int) ;
 int UHCI_CMD ;
 int UHCI_CMD_MAXP ;
 int UHCI_CMD_RS ;
 int UHCI_FLBASEADDR ;
 int UHCI_STS ;
 int UHCI_STS_HCH ;
 int UREAD2 (TYPE_2__*,int ) ;
 int USB_BUS_LOCK_ASSERT (TYPE_5__*,int ) ;
 int UWRITE4 (TYPE_2__*,int ,int ) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
uhci_restart(uhci_softc_t *sc)
{
 struct usb_page_search buf_res;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

   if (UREAD2(sc, UHCI_CMD) & UHCI_CMD_RS) {
  DPRINTFN(2, "Already started\n");
  return (0);
 }

 DPRINTFN(2, "Restarting\n");

 usbd_get_page(&sc->sc_hw.pframes_pc, 0, &buf_res);


 UWRITE4(sc, UHCI_FLBASEADDR, buf_res.physaddr);




 UHCICMD(sc, (UHCI_CMD_MAXP | UHCI_CMD_RS));



 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);



 if (UREAD2(sc, UHCI_STS) & UHCI_STS_HCH) {
  DPRINTFN(2, "Failed\n");
  return (1);
 }
 return (0);
}
