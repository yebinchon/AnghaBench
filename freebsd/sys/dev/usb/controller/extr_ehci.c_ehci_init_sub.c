
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_page_search {int physaddr; } ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int async_start_pc; int pframes_pc; } ;
struct ehci_softc {int sc_eintrs; TYPE_2__ sc_bus; TYPE_1__ sc_hw; } ;


 int DPRINTF (char*,...) ;
 int EHCI_ASYNCLISTADDR ;
 int EHCI_CMD_ASE ;
 int EHCI_CMD_FLS_M ;
 int EHCI_CMD_ITC_1 ;
 int EHCI_CMD_PSE ;
 int EHCI_CMD_RS ;
 int EHCI_CONFIGFLAG ;
 int EHCI_CONF_CF ;
 int EHCI_CTRLDSSEGMENT ;
 int EHCI_HCCPARAMS ;
 scalar_t__ EHCI_HCC_64BIT (int) ;
 int EHCI_LINK_QH ;
 int EHCI_PERIODICLISTBASE ;
 int EHCI_STS_HCH ;
 int EHCI_USBCMD ;
 int EHCI_USBINTR ;
 int EHCI_USBSTS ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int EOWRITE4 (struct ehci_softc*,int ,int) ;
 int EREAD4 (struct ehci_softc*,int ) ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int device_printf (int ,char*) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;

__attribute__((used)) static int
ehci_init_sub(struct ehci_softc *sc)
{
 struct usb_page_search buf_res;
 uint32_t cparams;
   uint32_t hcr;
 uint8_t i;

 cparams = EREAD4(sc, EHCI_HCCPARAMS);

 DPRINTF("cparams=0x%x\n", cparams);

 if (EHCI_HCC_64BIT(cparams)) {
  DPRINTF("HCC uses 64-bit structures\n");


  EOWRITE4(sc, EHCI_CTRLDSSEGMENT, 0);
 }

 usbd_get_page(&sc->sc_hw.pframes_pc, 0, &buf_res);
 EOWRITE4(sc, EHCI_PERIODICLISTBASE, buf_res.physaddr);

 usbd_get_page(&sc->sc_hw.async_start_pc, 0, &buf_res);
 EOWRITE4(sc, EHCI_ASYNCLISTADDR, buf_res.physaddr | EHCI_LINK_QH);


 EOWRITE4(sc, EHCI_USBINTR, sc->sc_eintrs);


 EOWRITE4(sc, EHCI_USBCMD,
     EHCI_CMD_ITC_1 |
     (EOREAD4(sc, EHCI_USBCMD) & EHCI_CMD_FLS_M) |
     EHCI_CMD_ASE |
     EHCI_CMD_PSE |
     EHCI_CMD_RS);


 EOWRITE4(sc, EHCI_CONFIGFLAG, EHCI_CONF_CF);

 for (i = 0; i < 100; i++) {
  usb_pause_mtx(((void*)0), hz / 128);
  hcr = EOREAD4(sc, EHCI_USBSTS) & EHCI_STS_HCH;
  if (!hcr) {
   break;
  }
 }
 if (hcr) {
  device_printf(sc->sc_bus.bdev, "run timeout\n");
  return (USB_ERR_IOERROR);
 }
 return (USB_ERR_NORMAL_COMPLETION);
}
