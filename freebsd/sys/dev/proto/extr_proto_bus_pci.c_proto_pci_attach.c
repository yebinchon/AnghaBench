
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
struct proto_softc {int dummy; } ;
typedef int device_t ;


 int PCIM_BAR_MEM_64 ;
 int PCIM_BAR_MEM_TYPE ;
 int PCIR_BAR (int) ;
 int PCIR_MAX_BAR_0 ;
 scalar_t__ PCI_BAR_IO (int) ;
 int PROTO_RES_BUSDMA ;
 int PROTO_RES_PCICFG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int) ;
 struct proto_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int proto_add_resource (struct proto_softc*,int,int,struct resource*) ;
 int proto_attach (int ) ;

__attribute__((used)) static int
proto_pci_attach(device_t dev)
{
 struct proto_softc *sc;
 struct resource *res;
 uint32_t val;
 int bar, rid, type;

 sc = device_get_softc(dev);

 proto_add_resource(sc, PROTO_RES_PCICFG, 0, ((void*)0));
 proto_add_resource(sc, PROTO_RES_BUSDMA, 0, ((void*)0));

 for (bar = 0; bar < PCIR_MAX_BAR_0; bar++) {
  rid = PCIR_BAR(bar);
  val = pci_read_config(dev, rid, 4);
  type = (PCI_BAR_IO(val)) ? SYS_RES_IOPORT : SYS_RES_MEMORY;
  res = bus_alloc_resource_any(dev, type, &rid, RF_ACTIVE);
  if (res == ((void*)0))
   continue;
  proto_add_resource(sc, type, rid, res);
  if (type == SYS_RES_IOPORT)
   continue;

  if ((val & PCIM_BAR_MEM_TYPE) == PCIM_BAR_MEM_64)
   bar++;
 }

 rid = 0;
 type = SYS_RES_IRQ;
 res = bus_alloc_resource_any(dev, type, &rid, RF_ACTIVE | RF_SHAREABLE);
 if (res != ((void*)0))
  proto_add_resource(sc, type, rid, res);
 return (proto_attach(dev));
}
