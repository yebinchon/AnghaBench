
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct openpic_softc {int sc_bh; int sc_bt; } ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
openpic_write(struct openpic_softc *sc, u_int reg, uint32_t val)
{
 bus_space_write_4(sc->sc_bt, sc->sc_bh, reg, val);
}
