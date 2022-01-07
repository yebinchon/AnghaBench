
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dc_softc {int dummy; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int ) ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIO ;
 int DC_SIO_EESEL ;
 int DC_SIO_EE_CLK ;
 int DC_SIO_EE_CS ;
 int DC_SIO_EE_DATAOUT ;
 int DC_SIO_ROMCTL_READ ;
 int SIO_CLR (int ) ;
 int SIO_SET (int ) ;
 int dc_delay (struct dc_softc*) ;
 int dc_eeprom_idle (struct dc_softc*) ;
 int dc_eeprom_putbyte (struct dc_softc*,int) ;

__attribute__((used)) static void
dc_eeprom_getword(struct dc_softc *sc, int addr, uint16_t *dest)
{
 int i;
 uint16_t word = 0;


 dc_eeprom_idle(sc);


 CSR_WRITE_4(sc, DC_SIO, DC_SIO_EESEL);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_ROMCTL_READ);
 dc_delay(sc);
 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CS);
 dc_delay(sc);




 dc_eeprom_putbyte(sc, addr);




 for (i = 0x8000; i; i >>= 1) {
  SIO_SET(DC_SIO_EE_CLK);
  dc_delay(sc);
  if (CSR_READ_4(sc, DC_SIO) & DC_SIO_EE_DATAOUT)
   word |= i;
  dc_delay(sc);
  SIO_CLR(DC_SIO_EE_CLK);
  dc_delay(sc);
 }


 dc_eeprom_idle(sc);

 *dest = word;
}
