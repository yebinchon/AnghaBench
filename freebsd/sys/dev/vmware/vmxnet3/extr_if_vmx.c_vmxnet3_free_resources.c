
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int * vmx_res1; int * vmx_res0; int vmx_dev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
vmxnet3_free_resources(struct vmxnet3_softc *sc)
{
 device_t dev;

 dev = sc->vmx_dev;

 if (sc->vmx_res0 != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->vmx_res0), sc->vmx_res0);
  sc->vmx_res0 = ((void*)0);
 }

 if (sc->vmx_res1 != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->vmx_res1), sc->vmx_res1);
  sc->vmx_res1 = ((void*)0);
 }
}
