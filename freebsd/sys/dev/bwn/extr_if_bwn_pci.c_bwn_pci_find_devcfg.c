
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pci_device {scalar_t__ device; scalar_t__ vendor; } ;
struct bwn_pci_devcfg {struct bwn_pci_device* devices; } ;
typedef int device_t ;


 int ENOENT ;
 struct bwn_pci_devcfg* bwn_pci_devcfgs ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
bwn_pci_find_devcfg(device_t dev, const struct bwn_pci_devcfg **cfg,
    const struct bwn_pci_device **device)
{
 const struct bwn_pci_devcfg *dvc;
 const struct bwn_pci_device *dv;

 for (dvc = bwn_pci_devcfgs; dvc->devices != ((void*)0); dvc++) {
  for (dv = dvc->devices; dv->device != 0; dv++) {
   if (pci_get_vendor(dev) == dv->vendor &&
       pci_get_device(dev) == dv->device)
   {
    if (cfg != ((void*)0))
     *cfg = dvc;

    if (device != ((void*)0))
     *device = dv;

    return (0);
   }
  }
 }

 return (ENOENT);
}
