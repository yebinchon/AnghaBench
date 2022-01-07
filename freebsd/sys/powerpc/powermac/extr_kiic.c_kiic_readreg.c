
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct kiic_softc {int sc_regstep; int sc_reg; } ;


 int bus_read_4 (int ,int) ;

__attribute__((used)) static u_int
kiic_readreg(struct kiic_softc *sc, u_int reg)
{
 return bus_read_4(sc->sc_reg, sc->sc_regstep * reg) & 0xff;
}
