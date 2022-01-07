
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct jme_softc {int jme_dev; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int JME_SMBCSR ;
 int JME_SMBINTF ;
 int JME_TIMEOUT ;
 int SMBCSR_HW_BUSY_MASK ;
 int SMBCSR_HW_IDLE ;
 int SMBINTF_ADDR_MASK ;
 int SMBINTF_ADDR_SHIFT ;
 int SMBINTF_CMD_TRIGGER ;
 int SMBINTF_RD ;
 int SMBINTF_RD_DATA_MASK ;
 int SMBINTF_RD_DATA_SHIFT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
jme_eeprom_read_byte(struct jme_softc *sc, uint8_t addr, uint8_t *val)
{
 uint32_t reg;
 int i;

 *val = 0;
 for (i = JME_TIMEOUT; i > 0; i--) {
  reg = CSR_READ_4(sc, JME_SMBCSR);
  if ((reg & SMBCSR_HW_BUSY_MASK) == SMBCSR_HW_IDLE)
   break;
  DELAY(1);
 }

 if (i == 0) {
  device_printf(sc->jme_dev, "EEPROM idle timeout!\n");
  return (ETIMEDOUT);
 }

 reg = ((uint32_t)addr << SMBINTF_ADDR_SHIFT) & SMBINTF_ADDR_MASK;
 CSR_WRITE_4(sc, JME_SMBINTF, reg | SMBINTF_RD | SMBINTF_CMD_TRIGGER);
 for (i = JME_TIMEOUT; i > 0; i--) {
  DELAY(1);
  reg = CSR_READ_4(sc, JME_SMBINTF);
  if ((reg & SMBINTF_CMD_TRIGGER) == 0)
   break;
 }

 if (i == 0) {
  device_printf(sc->jme_dev, "EEPROM read timeout!\n");
  return (ETIMEDOUT);
 }

 reg = CSR_READ_4(sc, JME_SMBINTF);
 *val = (reg & SMBINTF_RD_DATA_MASK) >> SMBINTF_RD_DATA_SHIFT;

 return (0);
}
