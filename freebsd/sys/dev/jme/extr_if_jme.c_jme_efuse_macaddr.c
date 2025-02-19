
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int jme_dev; } ;


 int DELAY (int) ;
 int EFUSE_CTL1_AUTOLAOD_DONE ;
 int EFUSE_CTL1_AUTOLOAD_ERR ;
 int EFUSE_CTL1_CMD_AUTOLOAD ;
 int EFUSE_CTL1_CMD_MASK ;
 int EFUSE_CTL1_EXECUTE ;
 int EFUSE_CTL2_RESET ;
 int ENOENT ;
 int ETIMEDOUT ;
 int JME_EFUSE_CTL1 ;
 int JME_EFUSE_CTL2 ;
 int device_printf (int ,char*) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
jme_efuse_macaddr(struct jme_softc *sc)
{
 uint32_t reg;
 int i;

 reg = pci_read_config(sc->jme_dev, JME_EFUSE_CTL1, 4);
 if ((reg & (EFUSE_CTL1_AUTOLOAD_ERR | EFUSE_CTL1_AUTOLAOD_DONE)) !=
     EFUSE_CTL1_AUTOLAOD_DONE)
  return (ENOENT);

 reg = pci_read_config(sc->jme_dev, JME_EFUSE_CTL2, 4);
 reg |= EFUSE_CTL2_RESET;
 pci_write_config(sc->jme_dev, JME_EFUSE_CTL2, reg, 4);
 reg = pci_read_config(sc->jme_dev, JME_EFUSE_CTL2, 4);
 reg &= ~EFUSE_CTL2_RESET;
 pci_write_config(sc->jme_dev, JME_EFUSE_CTL2, reg, 4);


 reg = pci_read_config(sc->jme_dev, JME_EFUSE_CTL1, 4);
 reg &= ~EFUSE_CTL1_CMD_MASK;
 reg |= EFUSE_CTL1_CMD_AUTOLOAD | EFUSE_CTL1_EXECUTE;
 pci_write_config(sc->jme_dev, JME_EFUSE_CTL1, reg, 4);





 DELAY(110);
 for (i = 10; i > 0; i--) {
  reg = pci_read_config(sc->jme_dev, JME_EFUSE_CTL1, 4);
  if ((reg & (EFUSE_CTL1_AUTOLOAD_ERR |
      EFUSE_CTL1_AUTOLAOD_DONE)) != EFUSE_CTL1_AUTOLAOD_DONE) {
   DELAY(20);
   continue;
  }
  if ((reg & EFUSE_CTL1_EXECUTE) == 0)
   break;

  DELAY(20);
 }
 if (i == 0) {
  device_printf(sc->jme_dev, "eFuse autoload timed out.\n");
  return (ETIMEDOUT);
 }

 return (0);
}
