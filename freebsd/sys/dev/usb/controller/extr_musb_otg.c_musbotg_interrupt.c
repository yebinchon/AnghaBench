
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; int status_high_speed; } ;
struct musbotg_softc {scalar_t__ sc_mode; int sc_bus; TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*,int,...) ;
 scalar_t__ MUSB2_HOST_MODE ;
 int MUSB2_MASK_HSMODE ;
 int MUSB2_MASK_ICONN ;
 int MUSB2_MASK_IDISC ;
 int MUSB2_MASK_IRESET ;
 int MUSB2_MASK_IRESUME ;
 int MUSB2_MASK_ISUSP ;
 int MUSB2_MASK_IVBUSERR ;
 int MUSB2_MASK_SESS ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_DEVCTL ;
 int MUSB2_REG_INTRX ;
 int MUSB2_REG_INTRXE ;
 int MUSB2_REG_INTTX ;
 int MUSB2_REG_INTTXE ;
 int MUSB2_REG_INTUSB ;
 int MUSB2_REG_INTUSBE ;
 int MUSB2_REG_POWER ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 int MUSB2_WRITE_2 (struct musbotg_softc*,int ,int ) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int musbotg_interrupt_poll (struct musbotg_softc*) ;
 int musbotg_root_intr (struct musbotg_softc*) ;

void
musbotg_interrupt(struct musbotg_softc *sc,
    uint16_t rxstat, uint16_t txstat, uint8_t stat)
{
 uint16_t rx_status;
 uint16_t tx_status;
 uint8_t usb_status;
 uint8_t temp;
 uint8_t to = 2;

 USB_BUS_LOCK(&sc->sc_bus);

repeat:


 usb_status = MUSB2_READ_1(sc, MUSB2_REG_INTUSB);


 rx_status = MUSB2_READ_2(sc, MUSB2_REG_INTRX);
 tx_status = MUSB2_READ_2(sc, MUSB2_REG_INTTX);
 rx_status |= rxstat;
 tx_status |= txstat;
 usb_status |= stat;


 rxstat = 0;
 txstat = 0;
 stat = 0;



 if (usb_status & (MUSB2_MASK_IRESET |
     MUSB2_MASK_IRESUME | MUSB2_MASK_ISUSP |
     MUSB2_MASK_ICONN | MUSB2_MASK_IDISC |
     MUSB2_MASK_IVBUSERR)) {

  DPRINTFN(4, "real bus interrupt 0x%08x\n", usb_status);

  if (usb_status & MUSB2_MASK_IRESET) {


   sc->sc_flags.status_bus_reset = 1;
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 0;
   sc->sc_flags.change_connect = 1;


   temp = MUSB2_READ_1(sc, MUSB2_REG_POWER);
   if (temp & MUSB2_MASK_HSMODE)
    sc->sc_flags.status_high_speed = 1;
   else
    sc->sc_flags.status_high_speed = 0;





   temp = MUSB2_MASK_IRESET;

   temp &= ~MUSB2_MASK_IRESUME;

   temp |= MUSB2_MASK_ISUSP;
   MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE, temp);

   MUSB2_WRITE_2(sc, MUSB2_REG_INTTXE, 0);
   MUSB2_WRITE_2(sc, MUSB2_REG_INTRXE, 0);
  }





  if (usb_status & MUSB2_MASK_IRESUME) {
   if (sc->sc_flags.status_suspend) {
    sc->sc_flags.status_suspend = 0;
    sc->sc_flags.change_suspend = 1;

    temp = MUSB2_READ_1(sc, MUSB2_REG_INTUSBE);

    temp &= ~MUSB2_MASK_IRESUME;

    temp |= MUSB2_MASK_ISUSP;
    MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE, temp);
   }
  } else if (usb_status & MUSB2_MASK_ISUSP) {
   if (!sc->sc_flags.status_suspend) {
    sc->sc_flags.status_suspend = 1;
    sc->sc_flags.change_suspend = 1;

    temp = MUSB2_READ_1(sc, MUSB2_REG_INTUSBE);

    temp &= ~MUSB2_MASK_ISUSP;

    temp |= MUSB2_MASK_IRESUME;
    MUSB2_WRITE_1(sc, MUSB2_REG_INTUSBE, temp);
   }
  }
  if (usb_status &
      (MUSB2_MASK_ICONN | MUSB2_MASK_IDISC))
   sc->sc_flags.change_connect = 1;





  if (sc->sc_mode == MUSB2_HOST_MODE) {

      if (usb_status & MUSB2_MASK_IVBUSERR) {
   temp = MUSB2_READ_1(sc, MUSB2_REG_DEVCTL);
   temp |= MUSB2_MASK_SESS;
   MUSB2_WRITE_1(sc, MUSB2_REG_DEVCTL, temp);
      }
      if (usb_status & MUSB2_MASK_ICONN)
   sc->sc_flags.status_bus_reset = 1;
      if (usb_status & MUSB2_MASK_IDISC)
   sc->sc_flags.status_bus_reset = 0;
  }


  musbotg_root_intr(sc);
 }


 if (rx_status || tx_status) {
  DPRINTFN(4, "real endpoint interrupt "
      "rx=0x%04x, tx=0x%04x\n", rx_status, tx_status);
 }


 musbotg_interrupt_poll(sc);

 if (--to)
  goto repeat;

 USB_BUS_UNLOCK(&sc->sc_bus);
}
