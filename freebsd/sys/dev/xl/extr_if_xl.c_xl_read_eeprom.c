
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct xl_softc {int xl_flags; } ;
typedef scalar_t__ caddr_t ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int EEPROM_5BIT_OFFSET (int) ;
 int EEPROM_8BIT_OFFSET (int) ;
 int XL_EE_8BIT_READ ;
 int XL_EE_READ ;
 int XL_FLAG_8BITROM ;
 int XL_FLAG_EEPROM_OFFSET_30 ;
 int XL_SEL_WIN (int ) ;
 int XL_W0_EE_CMD ;
 int XL_W0_EE_DATA ;
 int ntohs (int ) ;
 int xl_eeprom_wait (struct xl_softc*) ;

__attribute__((used)) static int
xl_read_eeprom(struct xl_softc *sc, caddr_t dest, int off, int cnt, int swap)
{
 int err = 0, i;
 u_int16_t word = 0, *ptr;
 XL_SEL_WIN(0);

 if (xl_eeprom_wait(sc))
  return (1);

 if (sc->xl_flags & XL_FLAG_EEPROM_OFFSET_30)
  off += 0x30;

 for (i = 0; i < cnt; i++) {
  if (sc->xl_flags & XL_FLAG_8BITROM)
   CSR_WRITE_2(sc, XL_W0_EE_CMD,
       XL_EE_8BIT_READ | ((off + i) & 0x003F));
  else
   CSR_WRITE_2(sc, XL_W0_EE_CMD,
       XL_EE_READ | ((((off + i) << 2) & 0x7F00) | ((off + i) & 0x003F)));
  err = xl_eeprom_wait(sc);
  if (err)
   break;
  word = CSR_READ_2(sc, XL_W0_EE_DATA);
  ptr = (u_int16_t *)(dest + (i * 2));
  if (swap)
   *ptr = ntohs(word);
  else
   *ptr = word;
 }

 return (err ? 1 : 0);
}
