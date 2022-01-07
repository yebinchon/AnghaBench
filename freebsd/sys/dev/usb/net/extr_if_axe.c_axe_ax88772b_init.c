
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct usb_ether {void** ue_eaddr; } ;
struct axe_softc {int sc_pwrcfg; struct usb_ether sc_ue; } ;


 int AXE_CMD_RXCTL_WRITE ;
 int AXE_CMD_SROM_READ ;
 scalar_t__ AXE_EEPROM_772B_NODE_ID ;
 scalar_t__ AXE_EEPROM_772B_PHY_PWRCFG ;
 int AXE_GPIO_RELOAD_EEPROM ;
 int AXE_GPIO_WRITE (int ,int) ;
 int ETHER_ADDR_LEN ;
 int axe_ax88772_phywake (struct axe_softc*) ;
 int axe_cmd (struct axe_softc*,int ,int ,scalar_t__,int*) ;
 int hz ;
 int le16toh (int) ;

__attribute__((used)) static void
axe_ax88772b_init(struct axe_softc *sc)
{
 struct usb_ether *ue;
 uint16_t eeprom;
 uint8_t *eaddr;
 int i;

 ue = &sc->sc_ue;

 AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM, hz / 32);




 axe_cmd(sc, AXE_CMD_SROM_READ, 0, AXE_EEPROM_772B_PHY_PWRCFG, &eeprom);
 sc->sc_pwrcfg = le16toh(eeprom) & 0xFF00;






 eaddr = ue->ue_eaddr;
 for (i = 0; i < ETHER_ADDR_LEN / 2; i++) {
  axe_cmd(sc, AXE_CMD_SROM_READ, 0, AXE_EEPROM_772B_NODE_ID + i,
      &eeprom);
  eeprom = le16toh(eeprom);
  *eaddr++ = (uint8_t)(eeprom & 0xFF);
  *eaddr++ = (uint8_t)((eeprom >> 8) & 0xFF);
 }

 axe_ax88772_phywake(sc);

 axe_cmd(sc, AXE_CMD_RXCTL_WRITE, 0, 0, ((void*)0));
}
