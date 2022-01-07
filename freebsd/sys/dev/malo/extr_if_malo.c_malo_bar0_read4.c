
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct malo_softc {int malo_io0h; int malo_io0t; } ;
typedef int bus_size_t ;


 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static uint32_t
malo_bar0_read4(struct malo_softc *sc, bus_size_t off)
{
 return bus_space_read_4(sc->malo_io0t, sc->malo_io0h, off);
}
