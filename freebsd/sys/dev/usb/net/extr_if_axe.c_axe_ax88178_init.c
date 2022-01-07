
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_ether {int ue_dev; } ;
struct axe_softc {int sc_phyno; struct usb_ether sc_ue; } ;


 int AXE_178_RESET_MAGIC ;
 int AXE_CMD_RXCTL_WRITE ;
 int AXE_CMD_SROM_READ ;
 int AXE_CMD_SROM_WR_DISABLE ;
 int AXE_CMD_SROM_WR_ENABLE ;
 int AXE_CMD_SW_PHY_SELECT ;
 int AXE_CMD_SW_RESET_REG ;
 int AXE_GPIO0 ;
 int AXE_GPIO0_EN ;
 int AXE_GPIO1 ;
 int AXE_GPIO1_EN ;
 int AXE_GPIO2 ;
 int AXE_GPIO2_EN ;
 int AXE_GPIO_RELOAD_EEPROM ;
 int AXE_GPIO_WRITE (int,int) ;
 int AXE_SW_RESET_CLEAR ;
 int AXE_SW_RESET_PRL ;
 int axe_cmd (struct axe_softc*,int ,int ,int,int*) ;
 int axe_miibus_readreg (int ,int ,int) ;
 int axe_miibus_writereg (int ,int ,int,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int) ;
 int hz ;
 int le16toh (int) ;
 int uether_pause (struct usb_ether*,int) ;

__attribute__((used)) static void
axe_ax88178_init(struct axe_softc *sc)
{
 struct usb_ether *ue;
 int gpio0, ledmode, phymode;
 uint16_t eeprom, val;

 ue = &sc->sc_ue;
 axe_cmd(sc, AXE_CMD_SROM_WR_ENABLE, 0, 0, ((void*)0));

 axe_cmd(sc, AXE_CMD_SROM_READ, 0, 0x0017, &eeprom);
 eeprom = le16toh(eeprom);
 axe_cmd(sc, AXE_CMD_SROM_WR_DISABLE, 0, 0, ((void*)0));


 if (eeprom == 0xffff) {
  phymode = 131;
  gpio0 = 1;
  ledmode = 0;
 } else {
  phymode = eeprom & 0x7f;
  gpio0 = (eeprom & 0x80) ? 0 : 1;
  ledmode = eeprom >> 8;
 }

 if (bootverbose)
  device_printf(sc->sc_ue.ue_dev,
      "EEPROM data : 0x%04x, phymode : 0x%02x\n", eeprom,
      phymode);

 switch (phymode) {
 case 131:
  if (gpio0 == 1) {
   AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM | AXE_GPIO0_EN,
       hz / 32);
   AXE_GPIO_WRITE(AXE_GPIO0_EN | AXE_GPIO2 | AXE_GPIO2_EN,
       hz / 32);
   AXE_GPIO_WRITE(AXE_GPIO0_EN | AXE_GPIO2_EN, hz / 4);
   AXE_GPIO_WRITE(AXE_GPIO0_EN | AXE_GPIO2 | AXE_GPIO2_EN,
       hz / 32);
  } else {
   AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM | AXE_GPIO1 |
       AXE_GPIO1_EN, hz / 3);
   if (ledmode == 1) {
    AXE_GPIO_WRITE(AXE_GPIO1_EN, hz / 3);
    AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN,
        hz / 3);
   } else {
    AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN |
        AXE_GPIO2 | AXE_GPIO2_EN, hz / 32);
    AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN |
        AXE_GPIO2_EN, hz / 4);
    AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN |
        AXE_GPIO2 | AXE_GPIO2_EN, hz / 32);
   }
  }
  break;
 case 134:
 case 133:
 case 132:
  if (gpio0 == 1)
   AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM | AXE_GPIO0 |
       AXE_GPIO0_EN, hz / 32);
  else
   AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM | AXE_GPIO1 |
       AXE_GPIO1_EN, hz / 32);
  break;
 case 135:
  AXE_GPIO_WRITE(AXE_GPIO_RELOAD_EEPROM | AXE_GPIO1 |
      AXE_GPIO1_EN, hz / 32);
  AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN | AXE_GPIO2 |
      AXE_GPIO2_EN, hz / 32);
  AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN | AXE_GPIO2_EN, hz / 4);
  AXE_GPIO_WRITE(AXE_GPIO1 | AXE_GPIO1_EN | AXE_GPIO2 |
      AXE_GPIO2_EN, hz / 32);
  break;
 case 129:
 case 130:
 case 128:
  val = gpio0 == 1 ? AXE_GPIO0 | AXE_GPIO0_EN :
      AXE_GPIO1 | AXE_GPIO1_EN;
  AXE_GPIO_WRITE(val, hz / 32);
  AXE_GPIO_WRITE(val | AXE_GPIO2 | AXE_GPIO2_EN, hz / 32);
  AXE_GPIO_WRITE(val | AXE_GPIO2_EN, hz / 4);
  AXE_GPIO_WRITE(val | AXE_GPIO2 | AXE_GPIO2_EN, hz / 32);
  if (phymode == 129) {
   axe_miibus_writereg(ue->ue_dev, sc->sc_phyno,
       0x1F, 0x0005);
   axe_miibus_writereg(ue->ue_dev, sc->sc_phyno,
       0x0C, 0x0000);
   val = axe_miibus_readreg(ue->ue_dev, sc->sc_phyno,
       0x0001);
   axe_miibus_writereg(ue->ue_dev, sc->sc_phyno,
       0x01, val | 0x0080);
   axe_miibus_writereg(ue->ue_dev, sc->sc_phyno,
       0x1F, 0x0000);
  }
  break;
 default:

  break;
 }


 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_CLEAR, ((void*)0));
 uether_pause(ue, hz / 4);

 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0,
     AXE_SW_RESET_PRL | AXE_178_RESET_MAGIC, ((void*)0));
 uether_pause(ue, hz / 4);

 axe_cmd(sc, AXE_CMD_SW_PHY_SELECT, 0, 0, ((void*)0));
 uether_pause(ue, hz / 4);

 axe_cmd(sc, AXE_CMD_RXCTL_WRITE, 0, 0, ((void*)0));
}
