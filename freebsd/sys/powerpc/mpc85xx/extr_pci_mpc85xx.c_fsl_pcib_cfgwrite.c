
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct fsl_pcib_softc {int sc_cfg_mtx; int sc_bsh; int sc_bst; scalar_t__ sc_pcie; } ;


 int CONFIG_ACCESS_ENABLE ;
 int REG_CFG_ADDR ;
 int REG_CFG_DATA ;
 int bus_space_write_1 (int ,int ,int,int) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int htole16 (int) ;
 int htole32 (int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
fsl_pcib_cfgwrite(struct fsl_pcib_softc *sc, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t data, int bytes)
{
 uint32_t addr;

 addr = CONFIG_ACCESS_ENABLE;
 addr |= (bus & 0xff) << 16;
 addr |= (slot & 0x1f) << 11;
 addr |= (func & 0x7) << 8;
 addr |= reg & 0xfc;
 if (sc->sc_pcie)
  addr |= (reg & 0xf00) << 16;

 mtx_lock_spin(&sc->sc_cfg_mtx);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, REG_CFG_ADDR, addr);

 switch (bytes) {
 case 1:
  bus_space_write_1(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA + (reg & 3), data);
  break;
 case 2:
  bus_space_write_2(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA + (reg & 2), htole16(data));
  break;
 case 4:
  bus_space_write_4(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA, htole32(data));
  break;
 }
 mtx_unlock_spin(&sc->sc_cfg_mtx);
}
