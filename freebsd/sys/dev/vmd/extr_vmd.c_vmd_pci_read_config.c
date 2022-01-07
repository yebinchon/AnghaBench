
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int func; int slot; int bus; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int vmd_read_config (int ,int ,int ,int ,int,int) ;

__attribute__((used)) static uint32_t
vmd_pci_read_config(device_t dev, device_t child, int reg, int width)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;

 return vmd_read_config(dev, cfg->bus, cfg->slot, cfg->func, reg, width);
}
