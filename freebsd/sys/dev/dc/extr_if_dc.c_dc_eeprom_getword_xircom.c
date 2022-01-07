
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dc_softc {int dummy; } ;


 scalar_t__ CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_ROM ;
 int DC_SIO ;
 int DC_SIO_ROMCTL_READ ;
 int DC_SIO_ROMSEL ;
 int SIO_CLR (int) ;
 int SIO_SET (int) ;

__attribute__((used)) static void
dc_eeprom_getword_xircom(struct dc_softc *sc, int addr, uint16_t *dest)
{

 SIO_SET(DC_SIO_ROMSEL | DC_SIO_ROMCTL_READ);

 addr *= 2;
 CSR_WRITE_4(sc, DC_ROM, addr | 0x160);
 *dest = (uint16_t)CSR_READ_4(sc, DC_SIO) & 0xff;
 addr += 1;
 CSR_WRITE_4(sc, DC_ROM, addr | 0x160);
 *dest |= ((uint16_t)CSR_READ_4(sc, DC_SIO) & 0xff) << 8;

 SIO_CLR(DC_SIO_ROMSEL | DC_SIO_ROMCTL_READ);
}
