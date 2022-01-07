
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdsmb_softc {scalar_t__ res; int rid; int lock; int * smbus; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_child (int ,int *) ;
 struct amdsmb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
amdsmb_detach(device_t dev)
{
 struct amdsmb_softc *amdsmb_sc = device_get_softc(dev);

 if (amdsmb_sc->smbus) {
  device_delete_child(dev, amdsmb_sc->smbus);
  amdsmb_sc->smbus = ((void*)0);
 }

 mtx_destroy(&amdsmb_sc->lock);
 if (amdsmb_sc->res)
  bus_release_resource(dev, SYS_RES_IOPORT, amdsmb_sc->rid,
      amdsmb_sc->res);

 return (0);
}
