
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flags; int device; int vendor; int func; int slot; int bus; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int PCIB_READ_CONFIG (int ,int ,int ,int ,int,int) ;
 int PCICFG_VF ;
 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

uint32_t
pci_read_config_method(device_t dev, device_t child, int reg, int width)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 return (PCIB_READ_CONFIG(device_get_parent(dev),
     cfg->bus, cfg->slot, cfg->func, reg, width));
}
