
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct TYPE_6__ {int bus_mtx; int * methods; int usbrev; } ;
struct TYPE_5__ {int status_vbus; int mcsr_feat; } ;
struct uss820dci_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; scalar_t__ support_control; scalar_t__ support_isochronous; } ;


 int DELAY (int) ;
 int DPRINTF (char*,...) ;
 int USB_BUS_LOCK (TYPE_2__*) ;
 int USB_BUS_UNLOCK (TYPE_2__*) ;
 int USB_ERR_INVAL ;
 int USB_REV_1_1 ;
 int USS820_EPCON ;
 int USS820_EPCON_CTLEP ;
 int USS820_EPCON_RXEPEN ;
 int USS820_EPCON_RXIE ;
 int USS820_EPCON_RXSPM ;
 int USS820_EPCON_TXEPEN ;
 int USS820_EPCON_TXOE ;
 int USS820_EPINDEX ;
 int USS820_EP_MAX ;
 int USS820_MCSR ;
 int USS820_MCSR_BDFEAT ;
 int USS820_MCSR_FEAT ;
 int USS820_MCSR_INIT ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_REV ;
 int USS820_RXCON ;
 int USS820_SBIE ;
 int USS820_SBIE1 ;
 int USS820_SCR ;
 int USS820_SCRATCH ;
 int USS820_SCRATCH_IE_RESUME ;
 int USS820_SCR_IE_RESET ;
 int USS820_SCR_IE_SUSP ;
 int USS820_SCR_IRQPOL ;
 int USS820_SCR_SRESET ;
 int USS820_SCR_T_IRQ ;
 int USS820_TXCON ;
 int USS820_TXCON_ATM ;
 int USS820_TXCON_FFSZ_16_64 ;
 int USS820_TXCON_FFSZ_32_1024 ;
 int USS820_TXCON_FFSZ_64_256 ;
 int USS820_TXCON_FFSZ_8_512 ;
 int USS820_TXCON_TXISO ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;
 int uss820dci_bus_methods ;
 int uss820dci_do_poll (TYPE_2__*) ;
 int uss820dci_get_hw_ep_profile (int *,struct usb_hw_ep_profile const**,int) ;
 int uss820dci_pull_down (struct uss820dci_softc*) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,int ,int) ;

usb_error_t
uss820dci_init(struct uss820dci_softc *sc)
{
 const struct usb_hw_ep_profile *pf;
 uint8_t n;
 uint8_t temp;

 DPRINTF("start\n");


 sc->sc_bus.usbrev = USB_REV_1_1;
 sc->sc_bus.methods = &uss820dci_bus_methods;

 USB_BUS_LOCK(&sc->sc_bus);


 sc->sc_flags.status_vbus = 1;


 USS820_WRITE_1(sc, USS820_SCR, USS820_SCR_SRESET);
 DELAY(100);
 USS820_WRITE_1(sc, USS820_SCR, 0);


 for (n = 0;; n++) {

  temp = USS820_READ_1(sc, USS820_MCSR);

  if (temp & USS820_MCSR_INIT) {
   break;
  }
  if (n == 100) {
   USB_BUS_UNLOCK(&sc->sc_bus);
   return (USB_ERR_INVAL);
  }

  DELAY(100);
 }


 uss820dci_pull_down(sc);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);


 temp = USS820_READ_1(sc, USS820_REV);

 if (temp < 0x13) {
  USB_BUS_UNLOCK(&sc->sc_bus);
  return (USB_ERR_INVAL);
 }

 USS820_WRITE_1(sc, USS820_SCR,
     USS820_SCR_T_IRQ |
     USS820_SCR_IE_RESET |

     USS820_SCR_IE_SUSP |
     USS820_SCR_IRQPOL);


 USS820_WRITE_1(sc, USS820_SCRATCH,
     USS820_SCRATCH_IE_RESUME);


 USS820_WRITE_1(sc, USS820_MCSR,
     USS820_MCSR_BDFEAT |
     USS820_MCSR_FEAT);

 sc->sc_flags.mcsr_feat = 1;


 USS820_WRITE_1(sc, USS820_SBIE, 0);


 USS820_WRITE_1(sc, USS820_SBIE1, 0);


 for (n = 0; n != USS820_EP_MAX; n++) {


  USS820_WRITE_1(sc, USS820_EPINDEX, n);


  uss820dci_update_shared_1(sc, USS820_EPCON, 0, 0);
 }





 for (n = 0; n != USS820_EP_MAX; n++) {

  uss820dci_get_hw_ep_profile(((void*)0), &pf, n);


  if (pf->max_in_frame_size != pf->max_out_frame_size) {
   DPRINTF("Max frame size mismatch %u != %u\n",
       pf->max_in_frame_size, pf->max_out_frame_size);
  }
  if (pf->support_isochronous) {
   if (pf->max_in_frame_size <= 64) {
    temp = (USS820_TXCON_FFSZ_16_64 |
        USS820_TXCON_TXISO |
        USS820_TXCON_ATM);
   } else if (pf->max_in_frame_size <= 256) {
    temp = (USS820_TXCON_FFSZ_64_256 |
        USS820_TXCON_TXISO |
        USS820_TXCON_ATM);
   } else if (pf->max_in_frame_size <= 512) {
    temp = (USS820_TXCON_FFSZ_8_512 |
        USS820_TXCON_TXISO |
        USS820_TXCON_ATM);
   } else {
    temp = (USS820_TXCON_FFSZ_32_1024 |
        USS820_TXCON_TXISO |
        USS820_TXCON_ATM);
   }
  } else {
   if ((pf->max_in_frame_size <= 8) &&
       (sc->sc_flags.mcsr_feat)) {
    temp = (USS820_TXCON_FFSZ_8_512 |
        USS820_TXCON_ATM);
   } else if (pf->max_in_frame_size <= 16) {
    temp = (USS820_TXCON_FFSZ_16_64 |
        USS820_TXCON_ATM);
   } else if ((pf->max_in_frame_size <= 32) &&
       (sc->sc_flags.mcsr_feat)) {
    temp = (USS820_TXCON_FFSZ_32_1024 |
        USS820_TXCON_ATM);
   } else {
    temp = (USS820_TXCON_FFSZ_64_256 |
        USS820_TXCON_ATM);
   }
  }



  USS820_WRITE_1(sc, USS820_EPINDEX, n);
  USS820_WRITE_1(sc, USS820_TXCON, temp);
  USS820_WRITE_1(sc, USS820_RXCON, temp);

  if (pf->support_control) {
   temp = USS820_EPCON_CTLEP |
       USS820_EPCON_RXSPM |
       USS820_EPCON_RXIE |
       USS820_EPCON_RXEPEN |
       USS820_EPCON_TXOE |
       USS820_EPCON_TXEPEN;
  } else {
   temp = USS820_EPCON_RXEPEN | USS820_EPCON_TXEPEN;
  }

  uss820dci_update_shared_1(sc, USS820_EPCON, 0, temp);
 }

 USB_BUS_UNLOCK(&sc->sc_bus);



 uss820dci_do_poll(&sc->sc_bus);

 return (0);
}
