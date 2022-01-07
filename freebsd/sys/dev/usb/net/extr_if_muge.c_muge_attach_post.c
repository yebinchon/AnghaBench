
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct muge_softc {int sc_phyno; } ;


 int lan78xx_chip_init (struct muge_softc*) ;
 int muge_dbg_printf (struct muge_softc*,char*) ;
 int muge_set_leds (struct usb_ether*) ;
 int muge_set_mac_addr (struct usb_ether*) ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
muge_attach_post(struct usb_ether *ue)
{
 struct muge_softc *sc = uether_getsc(ue);

 muge_dbg_printf(sc, "Calling muge_attach_post.\n");


 sc->sc_phyno = 1;

 muge_set_mac_addr(ue);
 muge_set_leds(ue);


 lan78xx_chip_init(sc);
}
