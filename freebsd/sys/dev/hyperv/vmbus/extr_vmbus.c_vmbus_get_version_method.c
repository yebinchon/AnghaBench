
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_softc {int vmbus_version; } ;
typedef int device_t ;


 struct vmbus_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
vmbus_get_version_method(device_t bus, device_t dev)
{
 struct vmbus_softc *sc = device_get_softc(bus);

 return sc->vmbus_version;
}
