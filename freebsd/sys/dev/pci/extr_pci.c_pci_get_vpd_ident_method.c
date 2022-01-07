
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vpd_reg; char* vpd_ident; int vpd_cached; } ;
struct TYPE_5__ {TYPE_1__ vpd; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;


 int ENXIO ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int pci_read_vpd (int ,TYPE_2__*) ;

int
pci_get_vpd_ident_method(device_t dev, device_t child, const char **identptr)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;

 if (!cfg->vpd.vpd_cached && cfg->vpd.vpd_reg != 0)
  pci_read_vpd(device_get_parent(dev), cfg);

 *identptr = cfg->vpd.vpd_ident;

 if (*identptr == ((void*)0))
  return (ENXIO);

 return (0);
}
