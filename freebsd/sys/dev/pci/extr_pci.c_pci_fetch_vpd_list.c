
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcicfg_vpd {scalar_t__ vpd_reg; int vpd_cached; } ;
struct TYPE_3__ {struct pcicfg_vpd vpd; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int pci_read_vpd (int ,TYPE_1__*) ;

struct pcicfg_vpd *
pci_fetch_vpd_list(device_t dev)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 pcicfgregs *cfg = &dinfo->cfg;

 if (!cfg->vpd.vpd_cached && cfg->vpd.vpd_reg != 0)
  pci_read_vpd(device_get_parent(device_get_parent(dev)), cfg);
 return (&cfg->vpd);
}
