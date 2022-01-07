
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
 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static uint32_t
fsl_pcib_cfgread(struct fsl_pcib_softc *sc, u_int bus, u_int slot, u_int func,
    u_int reg, int bytes)
{
 uint32_t addr, data;

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
  data = bus_space_read_1(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA + (reg & 3));
  break;
 case 2:
  data = le16toh(bus_space_read_2(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA + (reg & 2)));
  break;
 case 4:
  data = le32toh(bus_space_read_4(sc->sc_bst, sc->sc_bsh,
      REG_CFG_DATA));
  break;
 default:
  data = ~0;
  break;
 }
 mtx_unlock_spin(&sc->sc_cfg_mtx);
 return (data);
}
