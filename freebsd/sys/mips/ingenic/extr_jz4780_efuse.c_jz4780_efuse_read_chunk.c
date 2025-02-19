
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct jz4780_efuse_softc {int dummy; } ;


 int CSR_READ_4 (struct jz4780_efuse_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct jz4780_efuse_softc*,int ,int) ;
 int DELAY (int) ;
 int JZ_EFUCTRL ;
 scalar_t__ JZ_EFUDATA0 ;
 int JZ_EFUSE_ADDR_SHIFT ;
 int JZ_EFUSE_BANK ;
 int JZ_EFUSE_BANK_SIZE ;
 int JZ_EFUSE_RD_DONE ;
 int JZ_EFUSE_READ ;
 int JZ_EFUSE_SIZE_SHIFT ;
 scalar_t__ JZ_EFUSTATE ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void
jz4780_efuse_read_chunk(struct jz4780_efuse_softc *sc, int addr, uint8_t *buf, int len)
{
 uint32_t abuf;
 int i, count;


 CSR_WRITE_4(sc, JZ_EFUCTRL, JZ_EFUSE_READ |
     (addr < JZ_EFUSE_BANK_SIZE ? 0: JZ_EFUSE_BANK) |
     (addr << JZ_EFUSE_ADDR_SHIFT) |
     ((len - 1) << JZ_EFUSE_SIZE_SHIFT));

 while ((CSR_READ_4(sc, JZ_EFUSTATE) & JZ_EFUSE_RD_DONE) == 0)
  DELAY(1000);


 count = len & ~3;

 for (i = 0; i < count; i += 4) {
  abuf = CSR_READ_4(sc, JZ_EFUDATA0 + i);
  memcpy(buf, &abuf, 4);
  buf += 4;
 }


 if (i < len) {
  abuf = CSR_READ_4(sc, JZ_EFUDATA0 + i);
  for ( ; i < len; i++) {
   buf[i] = abuf & 0xff;
   abuf >>= 8;
  }
 }
}
