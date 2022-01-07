
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_type {scalar_t__ vr_vid; scalar_t__ vr_did; int * vr_name; } ;
typedef int device_t ;


 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct vr_type* vr_devs ;

__attribute__((used)) static const struct vr_type *
vr_match(device_t dev)
{
 const struct vr_type *t = vr_devs;

 for (t = vr_devs; t->vr_name != ((void*)0); t++)
  if ((pci_get_vendor(dev) == t->vr_vid) &&
      (pci_get_device(dev) == t->vr_did))
   return (t);
 return (((void*)0));
}
