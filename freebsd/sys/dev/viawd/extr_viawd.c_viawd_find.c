
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viawd_device {scalar_t__ device; int * desc; } ;
typedef int device_t ;


 scalar_t__ VENDORID_VIA ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct viawd_device* viawd_devices ;

__attribute__((used)) static struct viawd_device *
viawd_find(device_t dev)
{
 struct viawd_device *id;

 if (pci_get_vendor(dev) != VENDORID_VIA)
  return (((void*)0));
 for (id = viawd_devices; id->desc != ((void*)0); id++)
  if (pci_get_device(dev) == id->device)
   return (id);
 return (((void*)0));
}
