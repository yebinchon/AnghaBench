
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_softc {int dummy; } ;
typedef int device_t ;


 int VMBUS_PCPU_GET (struct vmbus_softc const*,int ,int) ;
 struct vmbus_softc* device_get_softc (int ) ;
 int vcpuid ;

__attribute__((used)) static uint32_t
vmbus_get_vcpu_id_method(device_t bus, device_t dev, int cpu)
{
 const struct vmbus_softc *sc = device_get_softc(bus);

 return (VMBUS_PCPU_GET(sc, vcpuid, cpu));
}
