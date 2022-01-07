
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct axe_softc {struct usb_ether sc_ue; } ;


 int AXE_CMD_RXCTL_WRITE ;
 int AXE_GPIO_RELOAD_EEPROM ;
 int AXE_GPIO_WRITE (int ,int) ;
 int axe_ax88772_phywake (struct axe_softc*) ;
 int axe_cmd (struct axe_softc*,int ,int ,int ,int *) ;
 int hz ;

__attribute__((used)) static void
axe_ax88772a_init(struct axe_softc *sc)
{
 struct usb_ether *ue;

 ue = &sc->sc_ue;

 AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM, hz / 32);
 axe_ax88772_phywake(sc);

 axe_cmd(sc, AXE_CMD_RXCTL_WRITE, 0, 0, ((void*)0));
}
