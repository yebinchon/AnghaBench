
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int * vmx_res1; void* vmx_ioh1; void* vmx_iot1; int * vmx_res0; void* vmx_ioh0; void* vmx_iot0; int vmx_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
vmxnet3_alloc_resources(struct vmxnet3_softc *sc)
{
 device_t dev;
 int rid;

 dev = sc->vmx_dev;

 rid = PCIR_BAR(0);
 sc->vmx_res0 = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->vmx_res0 == ((void*)0)) {
  device_printf(dev,
      "could not map BAR0 memory\n");
  return (ENXIO);
 }

 sc->vmx_iot0 = rman_get_bustag(sc->vmx_res0);
 sc->vmx_ioh0 = rman_get_bushandle(sc->vmx_res0);

 rid = PCIR_BAR(1);
 sc->vmx_res1 = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->vmx_res1 == ((void*)0)) {
  device_printf(dev,
      "could not map BAR1 memory\n");
  return (ENXIO);
 }

 sc->vmx_iot1 = rman_get_bustag(sc->vmx_res1);
 sc->vmx_ioh1 = rman_get_bushandle(sc->vmx_res1);

 return (0);
}
