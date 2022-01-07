
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pci_devinfo {int resources; } ;
typedef scalar_t__ device_t ;


 int M_DEVBUF ;
 struct bhnd_pci_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int device_set_ivars (scalar_t__,int *) ;
 int free (struct bhnd_pci_devinfo*,int ) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
bhnd_pci_child_deleted(device_t dev, device_t child)
{
 struct bhnd_pci_devinfo *dinfo;

 if (device_get_parent(child) != dev)
  return;

 dinfo = device_get_ivars(child);
 if (dinfo != ((void*)0)) {
  resource_list_free(&dinfo->resources);
  free(dinfo, M_DEVBUF);
 }

 device_set_ivars(child, ((void*)0));
}
