
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct grackle_softc {int sc_addr; } ;


 int GRACKLE_CFG_ENABLE ;
 int in32rb (int ) ;
 int out32rb (int ,int) ;

__attribute__((used)) static int
grackle_enable_config(struct grackle_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
 u_int32_t cfgval;





 cfgval = (bus << 16) | (slot << 11) | (func << 8) | (reg & 0xFC)
     | GRACKLE_CFG_ENABLE;

 out32rb(sc->sc_addr, cfgval);
 (void) in32rb(sc->sc_addr);

 return (1);
}
