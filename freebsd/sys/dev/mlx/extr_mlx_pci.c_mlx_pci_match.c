
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef int device_t ;


 struct mlx_ident* mlx_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct mlx_ident *
mlx_pci_match(device_t dev)
{
    struct mlx_ident *m;

    for (m = mlx_identifiers; m->vendor != 0; m++) {
 if ((m->vendor == pci_get_vendor(dev)) &&
     (m->device == pci_get_device(dev)) &&
     ((m->subvendor == 0) || ((m->subvendor == pci_get_subvendor(dev)) &&
         (m->subdevice == pci_get_subdevice(dev)))))
     return (m);
    }
    return (((void*)0));
}
