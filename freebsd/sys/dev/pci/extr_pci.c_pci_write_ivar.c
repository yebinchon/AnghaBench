
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t intpin; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOENT ;
 struct pci_devinfo* device_get_ivars (int ) ;

int
pci_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
 struct pci_devinfo *dinfo;

 dinfo = device_get_ivars(child);

 switch (which) {
 case 136:
  dinfo->cfg.intpin = value;
  return (0);
 case 138:
 case 129:
 case 130:
 case 128:
 case 141:
 case 140:
 case 142:
 case 131:
 case 134:
 case 133:
 case 135:
 case 139:
 case 143:
 case 132:
 case 137:
  return (EINVAL);

 default:
  return (ENOENT);
 }
}
