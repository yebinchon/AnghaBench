
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int desc ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ VIRTIO_PCI_ABI_VERSION ;
 scalar_t__ VIRTIO_PCI_DEVICEID_MAX ;
 scalar_t__ VIRTIO_PCI_DEVICEID_MIN ;
 scalar_t__ VIRTIO_PCI_VENDORID ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 char* virtio_device_name (int ) ;

__attribute__((used)) static int
vtpci_probe(device_t dev)
{
 char desc[36];
 const char *name;

 if (pci_get_vendor(dev) != VIRTIO_PCI_VENDORID)
  return (ENXIO);

 if (pci_get_device(dev) < VIRTIO_PCI_DEVICEID_MIN ||
     pci_get_device(dev) > VIRTIO_PCI_DEVICEID_MAX)
  return (ENXIO);

 if (pci_get_revid(dev) != VIRTIO_PCI_ABI_VERSION)
  return (ENXIO);

 name = virtio_device_name(pci_get_subdevice(dev));
 if (name == ((void*)0))
  name = "Unknown";

 snprintf(desc, sizeof(desc), "VirtIO PCI %s adapter", name);
 device_set_desc_copy(dev, desc);

 return (BUS_PROBE_DEFAULT);
}
