
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rsu_softc {int sc_dev; } ;


 int MS (int,int ) ;
 int R92S_EFUSE_CTRL ;
 int R92S_EFUSE_CTRL_ADDR ;
 int R92S_EFUSE_CTRL_DATA ;
 int R92S_EFUSE_CTRL_VALID ;
 int RW (int,int ,int ) ;
 int device_printf (int ,char*,int ) ;
 int rsu_ms_delay (struct rsu_softc*,int) ;
 int rsu_read_4 (struct rsu_softc*,int ) ;
 int rsu_write_4 (struct rsu_softc*,int ,int) ;

__attribute__((used)) static uint8_t
rsu_efuse_read_1(struct rsu_softc *sc, uint16_t addr)
{
 uint32_t reg;
 int ntries;

 reg = rsu_read_4(sc, R92S_EFUSE_CTRL);
 reg = RW(reg, R92S_EFUSE_CTRL_ADDR, addr);
 reg &= ~R92S_EFUSE_CTRL_VALID;
 rsu_write_4(sc, R92S_EFUSE_CTRL, reg);

 for (ntries = 0; ntries < 100; ntries++) {
  reg = rsu_read_4(sc, R92S_EFUSE_CTRL);
  if (reg & R92S_EFUSE_CTRL_VALID)
   return (MS(reg, R92S_EFUSE_CTRL_DATA));
  rsu_ms_delay(sc, 1);
 }
 device_printf(sc->sc_dev,
     "could not read efuse byte at address 0x%x\n", addr);
 return (0xff);
}
