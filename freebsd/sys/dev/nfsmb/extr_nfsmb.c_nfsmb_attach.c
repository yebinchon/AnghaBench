
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmb_softc {int rid; int * subdev; void* smbus; int lock; int * res; } ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int MTX_DEF ;
 int NF2PCI_SMBASE_1 ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 void* device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct nfsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 int nfsmb_detach (int ) ;
 int pci_get_device (int ) ;

__attribute__((used)) static int
nfsmb_attach(device_t dev)
{
 struct nfsmb_softc *nfsmb_sc = device_get_softc(dev);


 nfsmb_sc->rid = NF2PCI_SMBASE_1;

 nfsmb_sc->res = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &nfsmb_sc->rid, RF_ACTIVE);

 if (nfsmb_sc->res == ((void*)0)) {

  nfsmb_sc->rid = 0x50;
  nfsmb_sc->res = bus_alloc_resource_any(dev,
      SYS_RES_IOPORT, &nfsmb_sc->rid, RF_ACTIVE);
  if (nfsmb_sc->res == ((void*)0)) {
   device_printf(dev, "could not map i/o space\n");
   return (ENXIO);
  }
 }

 mtx_init(&nfsmb_sc->lock, device_get_nameunit(dev), "nfsmb", MTX_DEF);


 nfsmb_sc->smbus = device_add_child(dev, "smbus", -1);
 if (!nfsmb_sc->smbus) {
  nfsmb_detach(dev);
  return (EINVAL);
 }

 nfsmb_sc->subdev = ((void*)0);
 switch (pci_get_device(dev)) {
 case 141:
 case 140:
 case 138:
 case 139:
 case 128:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:

  nfsmb_sc->subdev = device_add_child(dev, "nfsmb", -1);
  if (!nfsmb_sc->subdev) {
   nfsmb_detach(dev);
   return (EINVAL);
  }
  break;
 default:
  break;
 }

 bus_generic_attach(dev);

 return (0);
}
