
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds1553_softc {int sc_bsh; int sc_bst; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_space_read_1 (int ,int ,int ) ;
 struct ds1553_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
ds1553_direct_read(device_t dev, bus_size_t off)
{
 struct ds1553_softc *sc;

 sc = device_get_softc(dev);
 return (bus_space_read_1(sc->sc_bst, sc->sc_bsh, off));
}
