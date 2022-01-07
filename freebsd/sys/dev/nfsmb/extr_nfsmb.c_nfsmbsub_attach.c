
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmb_softc {int rid; int * smbus; int lock; int * res; } ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int MTX_DEF ;
 int NF2PCI_SMBASE_2 ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct nfsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 int nfsmbsub_detach (int ) ;

__attribute__((used)) static int
nfsmbsub_attach(device_t dev)
{
 device_t parent;
 struct nfsmb_softc *nfsmbsub_sc = device_get_softc(dev);

 parent = device_get_parent(dev);

 nfsmbsub_sc->rid = NF2PCI_SMBASE_2;

 nfsmbsub_sc->res = bus_alloc_resource_any(parent, SYS_RES_IOPORT,
     &nfsmbsub_sc->rid, RF_ACTIVE);
 if (nfsmbsub_sc->res == ((void*)0)) {

  nfsmbsub_sc->rid = 0x54;
  nfsmbsub_sc->res = bus_alloc_resource_any(parent,
      SYS_RES_IOPORT, &nfsmbsub_sc->rid, RF_ACTIVE);
  if (nfsmbsub_sc->res == ((void*)0)) {
   device_printf(dev, "could not map i/o space\n");
   return (ENXIO);
  }
 }
 mtx_init(&nfsmbsub_sc->lock, device_get_nameunit(dev), "nfsmb",
     MTX_DEF);

 nfsmbsub_sc->smbus = device_add_child(dev, "smbus", -1);
 if (nfsmbsub_sc->smbus == ((void*)0)) {
  nfsmbsub_detach(dev);
  return (EINVAL);
 }

 bus_generic_attach(dev);

 return (0);
}
