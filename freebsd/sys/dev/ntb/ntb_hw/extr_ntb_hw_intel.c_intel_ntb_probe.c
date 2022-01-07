
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_hw_info {int desc; } ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct ntb_hw_info* intel_ntb_get_device_info (int ) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
intel_ntb_probe(device_t device)
{
 struct ntb_hw_info *p;

 p = intel_ntb_get_device_info(pci_get_devid(device));
 if (p == ((void*)0))
  return (ENXIO);

 device_set_desc(device, p->desc);
 return (0);
}
