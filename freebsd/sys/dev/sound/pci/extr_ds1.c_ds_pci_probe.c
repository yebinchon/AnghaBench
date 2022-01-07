
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int device_t ;
struct TYPE_2__ {int name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 TYPE_1__* ds_devs ;
 int ds_finddev (int ,int) ;
 int pci_get_devid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;

__attribute__((used)) static int
ds_pci_probe(device_t dev)
{
 int i;
 u_int32_t subdev;

 subdev = (pci_get_subdevice(dev) << 16) | pci_get_subvendor(dev);
 i = ds_finddev(pci_get_devid(dev), subdev);
 if (i >= 0) {
  device_set_desc(dev, ds_devs[i].name);
  return BUS_PROBE_DEFAULT;
 } else
  return ENXIO;
}
