
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dummy; } ;


 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIO ;
 int DC_SIO_EESEL ;
 int DC_SIO_EE_CLK ;
 int DC_SIO_EE_CS ;
 int DC_SIO_ROMCTL_READ ;
 int dc_delay (struct dc_softc*) ;

__attribute__((used)) static void
dc_eeprom_idle(struct dc_softc *sc)
{
 int i;

 CSR_WRITE_4(sc, DC_SIO, DC_SIO_EESEL);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_ROMCTL_READ);
 dc_delay(sc);
 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CS);
 dc_delay(sc);

 for (i = 0; i < 25; i++) {
  DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
  DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
 }

 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
 dc_delay(sc);
 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CS);
 dc_delay(sc);
 CSR_WRITE_4(sc, DC_SIO, 0x00000000);
}
