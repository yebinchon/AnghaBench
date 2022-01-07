
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ drm_pci_id_list_t ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int DRM_DEBUG (char*,int ,int ) ;
 int DRM_OBSOLETE (int ) ;
 int ENXIO ;
 scalar_t__ PCIC_DISPLAY ;
 scalar_t__ PCIS_DISPLAY_OTHER ;
 scalar_t__ PCIS_DISPLAY_VGA ;
 int * device_get_desc (int ) ;
 int device_get_nameunit (int ) ;
 int device_set_desc (int ,int ) ;
 TYPE_1__* drm_find_description (int,int,TYPE_1__ const*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_vendor (int ) ;

int
drm_probe_helper(device_t kdev, const drm_pci_id_list_t *idlist)
{
 const drm_pci_id_list_t *id_entry;
 int vendor, device;

 vendor = pci_get_vendor(kdev);
 device = pci_get_device(kdev);

 if (pci_get_class(kdev) != PCIC_DISPLAY ||
     (pci_get_subclass(kdev) != PCIS_DISPLAY_VGA &&
      pci_get_subclass(kdev) != PCIS_DISPLAY_OTHER))
  return (-ENXIO);

 id_entry = drm_find_description(vendor, device, idlist);
 if (id_entry != ((void*)0)) {
  if (device_get_desc(kdev) == ((void*)0)) {
   DRM_DEBUG("%s desc: %s\n",
       device_get_nameunit(kdev), id_entry->name);
   device_set_desc(kdev, id_entry->name);
  }
  DRM_OBSOLETE(kdev);
  return (-BUS_PROBE_GENERIC);
 }

 return (-ENXIO);
}
