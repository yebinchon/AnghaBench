
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xive_softc {scalar_t__ sc_offset; int sc_mem; } ;
typedef scalar_t__ bus_size_t ;


 int bus_write_1 (int ,scalar_t__,int ) ;

__attribute__((used)) static void
xive_write_1(struct xive_softc *sc, bus_size_t offset, uint8_t val)
{

 bus_write_1(sc->sc_mem, sc->sc_offset + offset, val);
}
