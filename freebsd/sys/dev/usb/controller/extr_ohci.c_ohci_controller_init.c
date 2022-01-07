
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_page_search {int physaddr; } ;
struct TYPE_9__ {int bulk_start_pc; int ctrl_start_pc; int hcca_pc; } ;
struct TYPE_8__ {int bdev; } ;
struct TYPE_10__ {int sc_eintrs; scalar_t__ sc_noport; TYPE_2__ sc_hw; TYPE_1__ sc_bus; } ;
typedef TYPE_3__ ohci_softc_t ;


 int DELAY (int) ;
 int DPRINTF (char*,...) ;
 int OHCI_ALL_INTRS ;
 int OHCI_BLE ;
 int OHCI_BULK_HEAD_ED ;
 int OHCI_CBSR_MASK ;
 int OHCI_CLE ;
 int OHCI_COMMAND_STATUS ;
 int OHCI_CONTROL ;
 int OHCI_CONTROL_HEAD_ED ;
 int OHCI_ENABLE_POWER_DELAY ;
 int OHCI_FIT ;
 int OHCI_FM_INTERVAL ;
 int OHCI_FSMPS (int) ;
 int OHCI_GET_IVAL (int) ;
 scalar_t__ OHCI_GET_NDP (int) ;
 int OHCI_HCCA ;
 int OHCI_HCFS_MASK ;
 int OHCI_HCFS_OPERATIONAL ;
 int OHCI_HCFS_RESET ;
 int OHCI_HCFS_SUSPEND ;
 int OHCI_HCR ;
 int OHCI_IE ;
 int OHCI_INTERRUPT_DISABLE ;
 int OHCI_INTERRUPT_ENABLE ;
 int OHCI_IR ;
 int OHCI_LES ;
 int OHCI_LPSC ;
 int OHCI_MIE ;
 int OHCI_NOCP ;
 int OHCI_OCR ;
 int OHCI_PERIODIC (int) ;
 int OHCI_PERIODIC_START ;
 int OHCI_PLE ;
 int OHCI_RATIO_1_4 ;
 int OHCI_READ_DESC_DELAY ;
 int OHCI_RH_DESCRIPTOR_A ;
 int OHCI_RH_STATUS ;
 int OREAD4 (TYPE_3__*,int ) ;
 int OWRITE4 (TYPE_3__*,int ,int) ;
 int USB_BUS_RESET_DELAY ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_MS_TO_TICKS (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ohci_dumpregs (TYPE_3__*) ;
 int ohcidebug ;
 int usb_pause_mtx (int *,int) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;

__attribute__((used)) static usb_error_t
ohci_controller_init(ohci_softc_t *sc, int do_suspend)
{
 struct usb_page_search buf_res;
 uint32_t i;
 uint32_t ctl;
 uint32_t ival;
 uint32_t hcr;
 uint32_t fm;
 uint32_t per;
 uint32_t desca;


 ctl = OREAD4(sc, OHCI_CONTROL);
 if (ctl & OHCI_IR) {

  DPRINTF("SMM active, request owner change\n");
  OWRITE4(sc, OHCI_COMMAND_STATUS, OHCI_OCR);
  for (i = 0; (i < 100) && (ctl & OHCI_IR); i++) {
   usb_pause_mtx(((void*)0), hz / 1000);
   ctl = OREAD4(sc, OHCI_CONTROL);
  }
  if (ctl & OHCI_IR) {
   device_printf(sc->sc_bus.bdev,
       "SMM does not respond, resetting\n");
   OWRITE4(sc, OHCI_CONTROL, OHCI_HCFS_RESET);
   goto reset;
  }
 } else {
  DPRINTF("cold started\n");
reset:

  usb_pause_mtx(((void*)0),
      USB_MS_TO_TICKS(USB_BUS_RESET_DELAY));
 }





 DPRINTF("%s: resetting\n", device_get_nameunit(sc->sc_bus.bdev));
 OWRITE4(sc, OHCI_CONTROL, OHCI_HCFS_RESET);

 usb_pause_mtx(((void*)0),
     USB_MS_TO_TICKS(USB_BUS_RESET_DELAY));


 ival = OHCI_GET_IVAL(OREAD4(sc, OHCI_FM_INTERVAL));

 OWRITE4(sc, OHCI_COMMAND_STATUS, OHCI_HCR);

 for (i = 0; i < 10; i++) {
  DELAY(10);
  hcr = OREAD4(sc, OHCI_COMMAND_STATUS) & OHCI_HCR;
  if (!hcr) {
   break;
  }
 }
 if (hcr) {
  device_printf(sc->sc_bus.bdev, "reset timeout\n");
  return (USB_ERR_IOERROR);
 }






 if (do_suspend) {
  OWRITE4(sc, OHCI_CONTROL, OHCI_HCFS_SUSPEND);
  return (USB_ERR_NORMAL_COMPLETION);
 }




 usbd_get_page(&sc->sc_hw.hcca_pc, 0, &buf_res);
 OWRITE4(sc, OHCI_HCCA, buf_res.physaddr);

 usbd_get_page(&sc->sc_hw.ctrl_start_pc, 0, &buf_res);
 OWRITE4(sc, OHCI_CONTROL_HEAD_ED, buf_res.physaddr);

 usbd_get_page(&sc->sc_hw.bulk_start_pc, 0, &buf_res);
 OWRITE4(sc, OHCI_BULK_HEAD_ED, buf_res.physaddr);


 OWRITE4(sc, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
 OWRITE4(sc, OHCI_INTERRUPT_ENABLE, sc->sc_eintrs | OHCI_MIE);

 ctl = OREAD4(sc, OHCI_CONTROL);
 ctl &= ~(OHCI_CBSR_MASK | OHCI_LES | OHCI_HCFS_MASK | OHCI_IR);
 ctl |= OHCI_PLE | OHCI_IE | OHCI_CLE | OHCI_BLE |
     OHCI_RATIO_1_4 | OHCI_HCFS_OPERATIONAL;

 OWRITE4(sc, OHCI_CONTROL, ctl);






 fm = (OREAD4(sc, OHCI_FM_INTERVAL) & OHCI_FIT) ^ OHCI_FIT;
 fm |= OHCI_FSMPS(ival) | ival;
 OWRITE4(sc, OHCI_FM_INTERVAL, fm);
 per = OHCI_PERIODIC(ival);
 OWRITE4(sc, OHCI_PERIODIC_START, per);


 desca = OREAD4(sc, OHCI_RH_DESCRIPTOR_A);
 OWRITE4(sc, OHCI_RH_DESCRIPTOR_A, desca | OHCI_NOCP);
 OWRITE4(sc, OHCI_RH_STATUS, OHCI_LPSC);
 usb_pause_mtx(((void*)0),
     USB_MS_TO_TICKS(OHCI_ENABLE_POWER_DELAY));
 OWRITE4(sc, OHCI_RH_DESCRIPTOR_A, desca);





 sc->sc_noport = 0;
 for (i = 0; (i < 10) && (sc->sc_noport == 0); i++) {
  usb_pause_mtx(((void*)0),
      USB_MS_TO_TICKS(OHCI_READ_DESC_DELAY));
  sc->sc_noport = OHCI_GET_NDP(OREAD4(sc, OHCI_RH_DESCRIPTOR_A));
 }






 return (USB_ERR_NORMAL_COMPLETION);
}
