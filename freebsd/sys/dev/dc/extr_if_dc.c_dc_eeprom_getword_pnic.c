
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct dc_softc {int dummy; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_PN_EEOPCODE_READ ;
 int DC_PN_SIOCTL ;
 int DC_PN_SIOCTL_BUSY ;
 int DC_SIO ;
 int DC_TIMEOUT ;
 int DELAY (int) ;

__attribute__((used)) static void
dc_eeprom_getword_pnic(struct dc_softc *sc, int addr, uint16_t *dest)
{
 int i;
 uint32_t r;

 CSR_WRITE_4(sc, DC_PN_SIOCTL, DC_PN_EEOPCODE_READ | addr);

 for (i = 0; i < DC_TIMEOUT; i++) {
  DELAY(1);
  r = CSR_READ_4(sc, DC_SIO);
  if (!(r & DC_PN_SIOCTL_BUSY)) {
   *dest = (uint16_t)(r & 0xFFFF);
   return;
  }
 }
}
