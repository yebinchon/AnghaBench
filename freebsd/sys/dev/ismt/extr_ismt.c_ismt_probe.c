
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;



 int device_set_desc (int ,char const*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
ismt_probe(device_t dev)
{
 const char *desc;

 switch (pci_get_devid(dev)) {
 case 129:
  desc = "Atom Processor S1200 SMBus 2.0 Controller 0";
  break;
 case 128:
  desc = "Atom Processor S1200 SMBus 2.0 Controller 1";
  break;
 case 130:
  desc = "Atom Processor C2000 SMBus 2.0";
  break;
 default:
  return (ENXIO);
 }

 device_set_desc(dev, desc);
 return (BUS_PROBE_DEFAULT);
}
