
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_core_info {uintptr_t vendor; uintptr_t device; uintptr_t hwrev; uintptr_t core_idx; uintptr_t unit; } ;
struct bcma_devinfo {int pmu_info; TYPE_1__* corecfg; } ;
typedef int device_t ;
struct TYPE_2__ {struct bhnd_core_info core_info; } ;
 int ENOENT ;
 uintptr_t bhnd_core_class (struct bhnd_core_info const*) ;
 int bhnd_core_name (struct bhnd_core_info const*) ;
 int bhnd_vendor_name (uintptr_t) ;
 struct bcma_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
bcma_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 const struct bcma_devinfo *dinfo;
 const struct bhnd_core_info *ci;

 dinfo = device_get_ivars(child);
 ci = &dinfo->corecfg->core_info;

 switch (index) {
 case 129:
  *result = ci->vendor;
  return (0);
 case 134:
  *result = ci->device;
  return (0);
 case 131:
  *result = ci->hwrev;
  return (0);
 case 133:
  *result = bhnd_core_class(ci);
  return (0);
 case 128:
  *result = (uintptr_t) bhnd_vendor_name(ci->vendor);
  return (0);
 case 132:
  *result = (uintptr_t) bhnd_core_name(ci);
  return (0);
 case 136:
  *result = ci->core_idx;
  return (0);
 case 135:
  *result = ci->unit;
  return (0);
 case 130:
  *result = (uintptr_t) dinfo->pmu_info;
  return (0);
 default:
  return (ENOENT);
 }
}
