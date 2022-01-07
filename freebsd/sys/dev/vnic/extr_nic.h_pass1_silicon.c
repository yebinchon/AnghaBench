
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int boolean_t ;


 scalar_t__ PCI_REVID_PASS2 ;
 scalar_t__ pci_get_revid (int ) ;

__attribute__((used)) static __inline boolean_t
pass1_silicon(device_t dev)
{


 return (pci_get_revid(dev) < PCI_REVID_PASS2);
}
