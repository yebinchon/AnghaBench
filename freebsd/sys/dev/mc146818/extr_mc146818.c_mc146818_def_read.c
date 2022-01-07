
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mc146818_softc {int sc_bsh; int sc_bst; } ;
typedef int device_t ;


 int MC_ADDR ;
 int MC_DATA ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 struct mc146818_softc* device_get_softc (int ) ;

u_int
mc146818_def_read(device_t dev, u_int reg)
{
 struct mc146818_softc *sc;

 sc = device_get_softc(dev);
 bus_space_write_1(sc->sc_bst, sc->sc_bsh, MC_ADDR, reg);
 return (bus_space_read_1(sc->sc_bst, sc->sc_bsh, MC_DATA));
}
