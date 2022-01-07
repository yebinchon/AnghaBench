
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int sc_bus; } ;
struct uninorth_softc {int sc_skipslot; int sc_ver; int sc_addr; TYPE_1__ pci_sc; int sc_cfg_mtx; } ;


 int MA_OWNED ;
 int in32rb (int ) ;
 int mtx_assert (int *,int ) ;
 int out32rb (int ,int) ;

__attribute__((used)) static int
uninorth_enable_config(struct uninorth_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
 uint32_t cfgval;

 mtx_assert(&sc->sc_cfg_mtx, MA_OWNED);

 if (sc->sc_skipslot == slot)
  return (0);
 if (sc->pci_sc.sc_bus == bus && sc->sc_ver < 4) {



  if (slot < 11)
   return (0);

  cfgval = (1 << slot) | (func << 8) | (reg & 0xfc);
 } else {
  cfgval = (bus << 16) | (slot << 11) | (func << 8) |
      (reg & 0xfc) | 1;
 }


 if (sc->sc_ver == 4)
  cfgval |= (reg >> 8) << 28;

 do {
  out32rb(sc->sc_addr, cfgval);
 } while (in32rb(sc->sc_addr) != cfgval);

 return (1);
}
