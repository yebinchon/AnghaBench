
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * nid; } ;
struct TYPE_6__ {TYPE_2__ lan; } ;
struct TYPE_4__ {int cfg; } ;
struct cardbus_devinfo {int fepresent; TYPE_3__ funce; TYPE_1__ pci; } ;
typedef int pcicfgregs ;
typedef int device_t ;


 int EINVAL ;
 int PCCARD_TPLFE_TYPE_LAN_NID ;

 struct cardbus_devinfo* device_get_ivars (int ) ;
 int pci_read_ivar (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
cardbus_read_ivar(device_t cbdev, device_t child, int which, uintptr_t *result)
{
 struct cardbus_devinfo *dinfo;
 pcicfgregs *cfg;

 dinfo = device_get_ivars(child);
 cfg = &dinfo->pci.cfg;

 switch (which) {
 case 128:




  if (dinfo->fepresent & (1 << PCCARD_TPLFE_TYPE_LAN_NID)) {
   *((uint8_t **) result) = dinfo->funce.lan.nid;
   break;
  }
  *((uint8_t **) result) = ((void*)0);
  return (EINVAL);
 default:
  return (pci_read_ivar(cbdev, child, which, result));
 }
 return 0;
}
