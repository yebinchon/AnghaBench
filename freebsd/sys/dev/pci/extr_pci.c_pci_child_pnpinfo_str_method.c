
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int device; int subvendor; int subdevice; int baseclass; int subclass; int progif; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,int,int ) ;

int
pci_child_pnpinfo_str_method(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct pci_devinfo *dinfo;
 pcicfgregs *cfg;

 dinfo = device_get_ivars(child);
 cfg = &dinfo->cfg;
 snprintf(buf, buflen, "vendor=0x%04x device=0x%04x subvendor=0x%04x "
     "subdevice=0x%04x class=0x%02x%02x%02x", cfg->vendor, cfg->device,
     cfg->subvendor, cfg->subdevice, cfg->baseclass, cfg->subclass,
     cfg->progif);
 return (0);
}
