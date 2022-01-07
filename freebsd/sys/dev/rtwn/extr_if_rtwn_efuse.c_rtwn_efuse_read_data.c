
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int efuse_maplen; } ;


 int EFAULT ;
 int RTWN_DEBUG_ROM ;
 int RTWN_DPRINTF (struct rtwn_softc*,int ,char*,int,int) ;
 int rtwn_efuse_read_next (struct rtwn_softc*,int*) ;

__attribute__((used)) static int
rtwn_efuse_read_data(struct rtwn_softc *sc, uint8_t *rom, uint8_t off,
    uint8_t msk)
{
 uint8_t reg;
 int addr, i, error;

 for (i = 0; i < 4; i++) {
  if (msk & (1 << i))
   continue;

  addr = off * 8 + i * 2;
  if (addr + 1 >= sc->efuse_maplen)
   return (EFAULT);

  error = rtwn_efuse_read_next(sc, &reg);
  if (error != 0)
   return (error);
  RTWN_DPRINTF(sc, RTWN_DEBUG_ROM, "rom[0x%03X] == 0x%02X\n",
      addr, reg);
  rom[addr] = reg;

  error = rtwn_efuse_read_next(sc, &reg);
  if (error != 0)
   return (error);
  RTWN_DPRINTF(sc, RTWN_DEBUG_ROM, "rom[0x%03X] == 0x%02X\n",
      addr + 1, reg);
  rom[addr + 1] = reg;
 }

 return (0);
}
