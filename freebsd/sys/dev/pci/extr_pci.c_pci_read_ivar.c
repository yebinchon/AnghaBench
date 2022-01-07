
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {uintptr_t subvendor; uintptr_t subdevice; uintptr_t vendor; uintptr_t device; uintptr_t baseclass; uintptr_t subclass; uintptr_t progif; uintptr_t revid; uintptr_t intpin; uintptr_t intline; uintptr_t domain; uintptr_t bus; uintptr_t slot; uintptr_t func; uintptr_t cmdreg; uintptr_t cachelnsz; uintptr_t mingnt; uintptr_t maxlat; uintptr_t lattimer; int hdrtype; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int EINVAL ;
 int ENOENT ;
 int PCIM_HDRTYPE_NORMAL ;
 struct pci_devinfo* device_get_ivars (int ) ;

int
pci_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct pci_devinfo *dinfo;
 pcicfgregs *cfg;

 dinfo = device_get_ivars(child);
 cfg = &dinfo->cfg;

 switch (which) {
 case 141:




  *((uint8_t **) result) = ((void*)0);
  return (EINVAL);
 case 129:
  *result = cfg->subvendor;
  break;
 case 130:
  *result = cfg->subdevice;
  break;
 case 128:
  *result = cfg->vendor;
  break;
 case 144:
  *result = cfg->device;
  break;
 case 143:
  *result = (cfg->device << 16) | cfg->vendor;
  break;
 case 146:
  *result = cfg->baseclass;
  break;
 case 131:
  *result = cfg->subclass;
  break;
 case 134:
  *result = cfg->progif;
  break;
 case 133:
  *result = cfg->revid;
  break;
 case 139:
  *result = cfg->intpin;
  break;
 case 138:
  *result = cfg->intline;
  break;
 case 142:
  *result = cfg->domain;
  break;
 case 148:
  *result = cfg->bus;
  break;
 case 132:
  *result = cfg->slot;
  break;
 case 140:
  *result = cfg->func;
  break;
 case 145:
  *result = cfg->cmdreg;
  break;
 case 147:
  *result = cfg->cachelnsz;
  break;
 case 135:
  if (cfg->hdrtype != PCIM_HDRTYPE_NORMAL) {
   *result = -1;
   return (EINVAL);
  }
  *result = cfg->mingnt;
  break;
 case 136:
  if (cfg->hdrtype != PCIM_HDRTYPE_NORMAL) {
   *result = -1;
   return (EINVAL);
  }
  *result = cfg->maxlat;
  break;
 case 137:
  *result = cfg->lattimer;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
