
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;

__attribute__((used)) static int extended_func_num(struct pci_dev *pdev)
{
 return PCI_SLOT(pdev->devfn) * 8 + PCI_FUNC(pdev->devfn);
}
