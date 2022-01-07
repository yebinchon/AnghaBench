
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_softc {int core; } ;
typedef int device_t ;


 int CHIPC_CHIPST ;
 int bhnd_bus_read_4 (int ,int ) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
chipc_read_chipst(device_t dev)
{
 struct chipc_softc *sc = device_get_softc(dev);
 return (bhnd_bus_read_4(sc->core, CHIPC_CHIPST));
}
