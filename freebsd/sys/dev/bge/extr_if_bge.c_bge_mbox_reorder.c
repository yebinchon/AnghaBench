
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct mbox_reorder TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct bge_softc {int bge_dev; } ;
typedef int device_t ;
typedef scalar_t__ devclass_t ;
struct mbox_reorder {scalar_t__ const vendor; scalar_t__ const device; char const* desc; } ;


 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,char const*) ;
 int nitems (TYPE_1__ const*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
bge_mbox_reorder(struct bge_softc *sc)
{

 static const struct mbox_reorder {
  const uint16_t vendor;
  const uint16_t device;
  const char *desc;
 } mbox_reorder_lists[] = {
  { 0x1022, 0x7450, "AMD-8131 PCI-X Bridge" },
 };
 devclass_t pci, pcib;
 device_t bus, dev;
 int i;

 pci = devclass_find("pci");
 pcib = devclass_find("pcib");
 dev = sc->bge_dev;
 bus = device_get_parent(dev);
 for (;;) {
  dev = device_get_parent(bus);
  bus = device_get_parent(dev);
  if (device_get_devclass(dev) != pcib)
   break;
  if (device_get_devclass(bus) != pci)
   break;
  for (i = 0; i < nitems(mbox_reorder_lists); i++) {
   if (pci_get_vendor(dev) ==
       mbox_reorder_lists[i].vendor &&
       pci_get_device(dev) ==
       mbox_reorder_lists[i].device) {
    device_printf(sc->bge_dev,
        "enabling MBOX workaround for %s\n",
        mbox_reorder_lists[i].desc);
    return (1);
   }
  }
 }
 return (0);
}
