
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmb_softc {int * res; int rid; int lock; int * smbus; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 int device_get_parent (int ) ;
 struct nfsmb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
nfsmbsub_detach(device_t dev)
{
 device_t parent;
 struct nfsmb_softc *nfsmbsub_sc = device_get_softc(dev);

 parent = device_get_parent(dev);

 if (nfsmbsub_sc->smbus) {
  device_delete_child(dev, nfsmbsub_sc->smbus);
  nfsmbsub_sc->smbus = ((void*)0);
 }
 mtx_destroy(&nfsmbsub_sc->lock);
 if (nfsmbsub_sc->res) {
  bus_release_resource(parent, SYS_RES_IOPORT, nfsmbsub_sc->rid,
      nfsmbsub_sc->res);
  nfsmbsub_sc->res = ((void*)0);
 }
 return (0);
}
