
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct kiic_softc {int sc_regstep; int sc_reg; } ;


 int DELAY (int) ;
 int bus_write_4 (int ,int,int) ;

__attribute__((used)) static void
kiic_writereg(struct kiic_softc *sc, u_int reg, u_int val)
{
 bus_write_4(sc->sc_reg, sc->sc_regstep * reg, val);
 DELAY(100);
}
