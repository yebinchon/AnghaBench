
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; int is_simplex; int support_multi_buffer; int support_bulk; int support_interrupt; int support_isochronous; int support_in; int support_out; } ;
struct TYPE_4__ {int bdev; int bus_mtx; int * methods; int usbrev; } ;
struct musbotg_softc {scalar_t__ sc_mode; int sc_ep_max; int sc_conf_data; TYPE_1__ sc_bus; struct musb_otg_ep_cfg* sc_ep_cfg; struct usb_hw_ep_profile* sc_hw_ep_profile; int sc_clocks_arg; int (* sc_clocks_on ) (int ) ;} ;
struct musb_otg_ep_cfg {scalar_t__ ep_end; int ep_fifosz_shift; int ep_fifosz_reg; } ;


 int DPRINTF (char*,int,...) ;
 int DPRINTFN (int,char*,...) ;
 scalar_t__ MUSB2_DEVICE_MODE ;
 scalar_t__ MUSB2_HOST_MODE ;
 int MUSB2_MASK_CD_DYNFIFOSZ ;
 int MUSB2_MASK_HSENAB ;
 int MUSB2_MASK_IRESET ;
 int MUSB2_MASK_ISOUPD ;
 int MUSB2_MASK_RX_FSIZE ;
 int MUSB2_MASK_SESS ;
 int MUSB2_MASK_TX_FSIZE ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_CONFDATA ;
 int MUSB2_REG_DEVCTL ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_EPINFO ;
 int MUSB2_REG_FSIZE ;
 int MUSB2_REG_HWVERS ;
 int MUSB2_REG_INTRXE ;
 int MUSB2_REG_INTTXE ;
 int MUSB2_REG_INTUSBE ;
 int MUSB2_REG_MISC ;
 int MUSB2_REG_POWER ;
 int MUSB2_REG_RXDBDIS ;
 int MUSB2_REG_RXFIFOADD ;
 int MUSB2_REG_RXFIFOSZ ;
 int MUSB2_REG_TESTMODE ;
 int MUSB2_REG_TXDBDIS ;
 int MUSB2_REG_TXFIFOADD ;
 int MUSB2_REG_TXFIFOSZ ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 int MUSB2_WRITE_2 (struct musbotg_softc*,int ,int) ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_REV_2_0 ;
 int device_printf (int ,char*) ;
 int hz ;
 int musbotg_bus_methods ;
 int musbotg_clocks_off (struct musbotg_softc*) ;
 int musbotg_do_poll (TYPE_1__*) ;
 struct musb_otg_ep_cfg* musbotg_ep_default ;
 int musbotg_pull_common (struct musbotg_softc*,int ) ;
 int stub1 (int ) ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
musbotg_init(struct musbotg_softc *sc)
{
 const struct musb_otg_ep_cfg *cfg;
 struct usb_hw_ep_profile *pf;
 int i;
 uint16_t offset;
 uint8_t nrx;
 uint8_t ntx;
 uint8_t temp;
 uint8_t fsize;
 uint8_t frx;
 uint8_t ftx;
 uint8_t dynfifo;

 DPRINTFN(1, "start\n");


 sc->sc_bus.usbrev = USB_REV_2_0;
 sc->sc_bus.methods = &musbotg_bus_methods;


 if (sc->sc_ep_cfg == ((void*)0))
  sc->sc_ep_cfg = musbotg_ep_default;

 USB_BUS_LOCK(&sc->sc_bus);



 if (sc->sc_clocks_on) {
  (sc->sc_clocks_on) (sc->sc_clocks_arg);
 }


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 1000);



 temp = MUSB2_READ_1(sc, MUSB2_REG_DEVCTL);
 DPRINTF("pre-DEVCTL=0x%02x\n", temp);

 MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE, 0);
 MUSB2_WRITE_2(sc, MUSB2_REG_INTTXE, 0);
 MUSB2_WRITE_2(sc, MUSB2_REG_INTRXE, 0);



 musbotg_pull_common(sc, 0);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);



 MUSB2_WRITE_2(sc, MUSB2_REG_RXDBDIS, 0xFFFF);
 MUSB2_WRITE_2(sc, MUSB2_REG_TXDBDIS, 0xFFFF);



 MUSB2_WRITE_1(sc, MUSB2_REG_POWER,
     MUSB2_MASK_HSENAB | MUSB2_MASK_ISOUPD);

 if (sc->sc_mode == MUSB2_DEVICE_MODE) {

  temp = MUSB2_READ_1(sc, MUSB2_REG_DEVCTL);
  temp &= ~MUSB2_MASK_SESS;
  MUSB2_WRITE_1(sc, MUSB2_REG_DEVCTL, temp);
 } else {

  temp = MUSB2_READ_1(sc, MUSB2_REG_DEVCTL);
  temp |= MUSB2_MASK_SESS;
  MUSB2_WRITE_1(sc, MUSB2_REG_DEVCTL, temp);
 }


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 10);

 DPRINTF("DEVCTL=0x%02x\n", temp);



 MUSB2_WRITE_1(sc, MUSB2_REG_TESTMODE, 0);



 MUSB2_WRITE_1(sc, MUSB2_REG_MISC, 0);



 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, 0);

 if (sc->sc_ep_max == 0) {


  nrx =
      (MUSB2_READ_1(sc, MUSB2_REG_EPINFO) / 16);

  ntx =
      (MUSB2_READ_1(sc, MUSB2_REG_EPINFO) % 16);

  sc->sc_ep_max = (nrx > ntx) ? nrx : ntx;
 } else {
  nrx = ntx = sc->sc_ep_max;
 }



 DPRINTFN(2, "RX/TX endpoints: %u/%u\n", nrx, ntx);

 if (sc->sc_ep_max == 0) {
  DPRINTFN(2, "ERROR: Looks like the clocks are off!\n");
 }


 sc->sc_conf_data = MUSB2_READ_1(sc, MUSB2_REG_CONFDATA);

 DPRINTFN(2, "Config Data: 0x%02x\n",
     sc->sc_conf_data);

 dynfifo = (sc->sc_conf_data & MUSB2_MASK_CD_DYNFIFOSZ) ? 1 : 0;

 if (dynfifo) {
  device_printf(sc->sc_bus.bdev, "Dynamic FIFO sizing detected, "
      "assuming 16Kbytes of FIFO RAM\n");
 }

 DPRINTFN(2, "HW version: 0x%04x\n",
     MUSB2_READ_1(sc, MUSB2_REG_HWVERS));



 offset = 0;

 for (temp = 1; temp <= sc->sc_ep_max; temp++) {
  pf = sc->sc_hw_ep_profile + temp;


  MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, temp);

  fsize = MUSB2_READ_1(sc, MUSB2_REG_FSIZE);
  frx = (fsize & MUSB2_MASK_RX_FSIZE) / 16;
  ftx = (fsize & MUSB2_MASK_TX_FSIZE);

  DPRINTF("Endpoint %u FIFO size: IN=%u, OUT=%u, DYN=%d\n",
      temp, ftx, frx, dynfifo);

  if (dynfifo) {
   if (frx && (temp <= nrx)) {
    for (i = 0; sc->sc_ep_cfg[i].ep_end >= 0; i++) {
     cfg = &sc->sc_ep_cfg[i];
     if (temp <= cfg->ep_end) {
      frx = cfg->ep_fifosz_shift;
      MUSB2_WRITE_1(sc,
          MUSB2_REG_RXFIFOSZ,
          cfg->ep_fifosz_reg);
      break;
     }
    }

    MUSB2_WRITE_2(sc, MUSB2_REG_RXFIFOADD,
        offset >> 3);

    offset += (1 << frx);
   }
   if (ftx && (temp <= ntx)) {
    for (i = 0; sc->sc_ep_cfg[i].ep_end >= 0; i++) {
     cfg = &sc->sc_ep_cfg[i];
     if (temp <= cfg->ep_end) {
      ftx = cfg->ep_fifosz_shift;
      MUSB2_WRITE_1(sc,
          MUSB2_REG_TXFIFOSZ,
          cfg->ep_fifosz_reg);
      break;
     }
    }

    MUSB2_WRITE_2(sc, MUSB2_REG_TXFIFOADD,
        offset >> 3);

    offset += (1 << ftx);
   }
  }

  if (frx && ftx && (temp <= nrx) && (temp <= ntx)) {
   pf->max_in_frame_size = 1 << ftx;
   pf->max_out_frame_size = 1 << frx;
   pf->is_simplex = 0;
   pf->support_multi_buffer = 1;
   pf->support_bulk = 1;
   pf->support_interrupt = 1;
   pf->support_isochronous = 1;
   pf->support_in = 1;
   pf->support_out = 1;
  } else if (frx && (temp <= nrx)) {
   pf->max_out_frame_size = 1 << frx;
   pf->max_in_frame_size = 0;
   pf->is_simplex = 1;
   pf->support_multi_buffer = 1;
   pf->support_bulk = 1;
   pf->support_interrupt = 1;
   pf->support_isochronous = 1;
   pf->support_out = 1;
  } else if (ftx && (temp <= ntx)) {
   pf->max_in_frame_size = 1 << ftx;
   pf->max_out_frame_size = 0;
   pf->is_simplex = 1;
   pf->support_multi_buffer = 1;
   pf->support_bulk = 1;
   pf->support_interrupt = 1;
   pf->support_isochronous = 1;
   pf->support_in = 1;
  }
 }

 DPRINTFN(2, "Dynamic FIFO size = %d bytes\n", offset);



 if (sc->sc_mode == MUSB2_HOST_MODE)
  MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE, 0xff);
 else
  MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE,
      MUSB2_MASK_IRESET);

 musbotg_clocks_off(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);



 musbotg_do_poll(&sc->sc_bus);

 return (0);
}
