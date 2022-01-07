
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mwl_softc {int sc_io0h; int sc_io0t; } ;
typedef int bus_size_t ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
WR4(struct mwl_softc *sc, bus_size_t off, uint32_t val)
{
 bus_space_write_4(sc->sc_io0t, sc->sc_io0h, off, val);
}
