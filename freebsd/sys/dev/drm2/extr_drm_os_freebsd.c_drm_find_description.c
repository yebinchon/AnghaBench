
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vendor; int device; } ;
typedef TYPE_1__ drm_pci_id_list_t ;



__attribute__((used)) static const drm_pci_id_list_t *
drm_find_description(int vendor, int device, const drm_pci_id_list_t *idlist)
{
 int i = 0;

 for (i = 0; idlist[i].vendor != 0; i++) {
  if ((idlist[i].vendor == vendor) &&
      ((idlist[i].device == device) ||
      (idlist[i].device == 0))) {
   return (&idlist[i]);
  }
 }
 return (((void*)0));
}
