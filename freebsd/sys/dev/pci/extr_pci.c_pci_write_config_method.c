
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


 int PCIB_WRITE_CONFIG (int ,int ,int ,int ,int,int ,int) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

void
pci_write_config_method(device_t dev, device_t child, int reg,
    uint32_t val, int width)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;

 PCIB_WRITE_CONFIG(device_get_parent(dev),
     cfg->bus, cfg->slot, cfg->func, reg, val, width);
}
