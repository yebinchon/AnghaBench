
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;


 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
trm_probe(device_t dev)
{
   switch (pci_get_devid(dev)) {
 case 129:
  device_set_desc(dev,
      "Tekram DC395U/UW/F DC315/U Fast20 Wide SCSI Adapter");
  return (BUS_PROBE_DEFAULT);
 case 128:
  device_set_desc(dev,
      "Tekram DC395U2D/U2W Fast40 Wide SCSI Adapter");
  return (BUS_PROBE_DEFAULT);
 default:
  return (ENXIO);
 }
}
