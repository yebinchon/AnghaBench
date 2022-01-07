
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds1553_softc {int sc_bsh; int sc_bst; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_space_write_1 (int ,int ,int ,int ) ;
 struct ds1553_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ds1553_direct_write(device_t dev, bus_size_t off, uint8_t val)
{
 struct ds1553_softc *sc;

 sc = device_get_softc(dev);
 bus_space_write_1(sc->sc_bst, sc->sc_bsh, off, val);
}
