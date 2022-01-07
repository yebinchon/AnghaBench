
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int PCIC_DISPLAY ;
 int PCIS_DISPLAY_VGA ;
 int PCI_S3_VENDOR_ID ;
 int S3_CONFIG_IO ;
 int S3_CONFIG_IO_SIZE ;
 int S3_ENHANCED_IO ;
 int S3_ENHANCED_IO_SIZE ;
 int SYS_RES_IOPORT ;
 int bus_set_resource (int ,int ,int,int ,int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_subclass (int ) ;

__attribute__((used)) static int
s3pci_probe(device_t dev)
{
 u_int32_t vendor, class, subclass, device_id;

 device_id = pci_get_devid(dev);
 vendor = device_id & 0xffff;
 class = pci_get_class(dev);
 subclass = pci_get_subclass(dev);

 if ((class != PCIC_DISPLAY) || (subclass != PCIS_DISPLAY_VGA) ||
  (vendor != PCI_S3_VENDOR_ID))
  return ENXIO;

 device_set_desc(dev, "S3 graphic card");

 bus_set_resource(dev, SYS_RES_IOPORT, 0,
    S3_CONFIG_IO, S3_CONFIG_IO_SIZE);
 bus_set_resource(dev, SYS_RES_IOPORT, 1,
    S3_ENHANCED_IO, S3_ENHANCED_IO_SIZE);

 return BUS_PROBE_DEFAULT;

}
