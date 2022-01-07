
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ti_softc {int ti_dev; } ;


 int CSR_READ_4 (struct ti_softc*,int ) ;
 int DELAY (int) ;
 int EEPROM_CTL_READ ;
 int EEPROM_CTL_WRITE ;
 int EEPROM_START ;
 int EEPROM_STOP ;
 int TI_CLRBIT (struct ti_softc*,int ,int ) ;
 int TI_MISC_LOCAL_CTL ;
 int TI_MLC_EE_CLK ;
 int TI_MLC_EE_DIN ;
 int TI_MLC_EE_TXEN ;
 int TI_SETBIT (struct ti_softc*,int ,int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ ti_eeprom_putbyte (struct ti_softc*,int) ;

__attribute__((used)) static uint8_t
ti_eeprom_getbyte(struct ti_softc *sc, int addr, uint8_t *dest)
{
 int i;
 uint8_t byte = 0;

 EEPROM_START;




 if (ti_eeprom_putbyte(sc, EEPROM_CTL_WRITE)) {
  device_printf(sc->ti_dev,
      "failed to send write command, status: %x\n",
      CSR_READ_4(sc, TI_MISC_LOCAL_CTL));
  return (1);
 }




 if (ti_eeprom_putbyte(sc, (addr >> 8) & 0xFF)) {
  device_printf(sc->ti_dev, "failed to send address, status: %x\n",
      CSR_READ_4(sc, TI_MISC_LOCAL_CTL));
  return (1);
 }



 if (ti_eeprom_putbyte(sc, addr & 0xFF)) {
  device_printf(sc->ti_dev, "failed to send address, status: %x\n",
      CSR_READ_4(sc, TI_MISC_LOCAL_CTL));
  return (1);
 }

 EEPROM_STOP;
 EEPROM_START;



 if (ti_eeprom_putbyte(sc, EEPROM_CTL_READ)) {
  device_printf(sc->ti_dev,
      "failed to send read command, status: %x\n",
      CSR_READ_4(sc, TI_MISC_LOCAL_CTL));
  return (1);
 }




 TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_TXEN);
 for (i = 0x80; i; i >>= 1) {
  TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
  DELAY(1);
  if (CSR_READ_4(sc, TI_MISC_LOCAL_CTL) & TI_MLC_EE_DIN)
   byte |= i;
  TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
  DELAY(1);
 }

 EEPROM_STOP;





 *dest = byte;

 return (0);
}
