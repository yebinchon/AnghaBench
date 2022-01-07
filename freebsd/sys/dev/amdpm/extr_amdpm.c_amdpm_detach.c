
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdpm_softc {scalar_t__ res; int rid; int lock; int * smbus; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_child (int ,int *) ;
 struct amdpm_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
amdpm_detach(device_t dev)
{
 struct amdpm_softc *amdpm_sc = device_get_softc(dev);

 if (amdpm_sc->smbus) {
  device_delete_child(dev, amdpm_sc->smbus);
  amdpm_sc->smbus = ((void*)0);
 }

 mtx_destroy(&amdpm_sc->lock);
 if (amdpm_sc->res)
  bus_release_resource(dev, SYS_RES_IOPORT, amdpm_sc->rid,
         amdpm_sc->res);

 return (0);
}
