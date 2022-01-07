
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int PCI_LEGSUP ;
 int PCI_LEGSUP_USBPIRQDEN ;
 int PCI_UHCI_BASE_REG ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int UHCI_INTR ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_write_2 (struct resource*,int ,int ) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static void
uhci_early_takeover(device_t self)
{
 struct resource *res;
 int rid;







 pci_write_config(self, PCI_LEGSUP, PCI_LEGSUP_USBPIRQDEN, 2);


 rid = PCI_UHCI_BASE_REG;
 res = bus_alloc_resource_any(self, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (res != ((void*)0)) {
  bus_write_2(res, UHCI_INTR, 0);
  bus_release_resource(self, SYS_RES_IOPORT, rid, res);
 }
}
