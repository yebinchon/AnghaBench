
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_softc {int core; } ;
typedef int device_t ;


 int CHIPC_CHIPCTRL ;
 int CHIPC_LOCK (struct chipc_softc*) ;
 int CHIPC_UNLOCK (struct chipc_softc*) ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_bus_write_4 (int ,int ,int) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
chipc_write_chipctrl(device_t dev, uint32_t value, uint32_t mask)
{
 struct chipc_softc *sc;
 uint32_t cctrl;

 sc = device_get_softc(dev);

 CHIPC_LOCK(sc);

 cctrl = bhnd_bus_read_4(sc->core, CHIPC_CHIPCTRL);
 cctrl = (cctrl & ~mask) | (value | mask);
 bhnd_bus_write_4(sc->core, CHIPC_CHIPCTRL, cctrl);

 CHIPC_UNLOCK(sc);
}
