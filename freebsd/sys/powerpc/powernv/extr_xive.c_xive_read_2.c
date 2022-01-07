
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xive_softc {scalar_t__ sc_offset; int sc_mem; } ;
typedef scalar_t__ bus_size_t ;


 int bus_read_2 (int ,scalar_t__) ;

__attribute__((used)) static uint16_t
xive_read_2(struct xive_softc *sc, bus_size_t offset)
{

 return (bus_read_2(sc->sc_mem, sc->sc_offset + offset));
}
