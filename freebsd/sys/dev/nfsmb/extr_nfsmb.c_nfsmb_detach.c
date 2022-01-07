
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmb_softc {int * res; int rid; int lock; int * smbus; int * subdev; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 struct nfsmb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
nfsmb_detach(device_t dev)
{
 struct nfsmb_softc *nfsmb_sc = device_get_softc(dev);

 if (nfsmb_sc->subdev) {
  device_delete_child(dev, nfsmb_sc->subdev);
  nfsmb_sc->subdev = ((void*)0);
 }

 if (nfsmb_sc->smbus) {
  device_delete_child(dev, nfsmb_sc->smbus);
  nfsmb_sc->smbus = ((void*)0);
 }

 mtx_destroy(&nfsmb_sc->lock);
 if (nfsmb_sc->res) {
  bus_release_resource(dev, SYS_RES_IOPORT, nfsmb_sc->rid,
      nfsmb_sc->res);
  nfsmb_sc->res = ((void*)0);
 }

 return (0);
}
