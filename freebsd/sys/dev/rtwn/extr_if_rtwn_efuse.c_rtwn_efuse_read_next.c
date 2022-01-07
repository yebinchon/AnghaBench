
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {scalar_t__ next_rom_addr; scalar_t__ efuse_maxlen; int sc_dev; } ;


 int EFAULT ;
 int ETIMEDOUT ;
 int MS (int,int ) ;
 int R92C_EFUSE_CTRL ;
 int R92C_EFUSE_CTRL_ADDR ;
 int R92C_EFUSE_CTRL_DATA ;
 int R92C_EFUSE_CTRL_VALID ;
 int RW (int,int ,scalar_t__) ;
 int device_printf (int ,char*,scalar_t__) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

int
rtwn_efuse_read_next(struct rtwn_softc *sc, uint8_t *val)
{
 uint32_t reg;
 int ntries, error;

 if (sc->next_rom_addr >= sc->efuse_maxlen)
  return (EFAULT);

 reg = rtwn_read_4(sc, R92C_EFUSE_CTRL);
 reg = RW(reg, R92C_EFUSE_CTRL_ADDR, sc->next_rom_addr);
 reg &= ~R92C_EFUSE_CTRL_VALID;

 error = rtwn_write_4(sc, R92C_EFUSE_CTRL, reg);
 if (error != 0)
  return (error);

 for (ntries = 0; ntries < 100; ntries++) {
  reg = rtwn_read_4(sc, R92C_EFUSE_CTRL);
  if (reg & R92C_EFUSE_CTRL_VALID)
   break;
  rtwn_delay(sc, 10);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
      "could not read efuse byte at address 0x%x\n",
      sc->next_rom_addr);
  return (ETIMEDOUT);
 }

 *val = MS(reg, R92C_EFUSE_CTRL_DATA);
 sc->next_rom_addr++;

 return (0);
}
