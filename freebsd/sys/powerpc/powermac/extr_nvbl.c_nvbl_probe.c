
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;
typedef int control ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char*,char**,int) ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_vendor (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
nvbl_probe(device_t dev)
{
 char control[8];
 phandle_t handle;

 handle = OF_finddevice("mac-io/backlight");

 if (handle == -1)
  return (ENXIO);

 if (OF_getprop(handle, "backlight-control", &control, sizeof(control)) < 0)
  return (ENXIO);

 if ((strcmp(control, "mnca") != 0) ||
     pci_get_vendor(device_get_parent(dev)) != PCI_VENDOR_ID_NVIDIA)
  return (ENXIO);

 device_set_desc(dev, "PowerBook backlight for nVidia graphics");

 return (0);
}
