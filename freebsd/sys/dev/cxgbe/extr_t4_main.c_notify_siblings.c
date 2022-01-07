
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int PCI_FUNCMAX ;
 int T4_ATTACH_CHILD (int *) ;
 int T4_DETACH_CHILD (int *) ;
 int device_is_attached (int *) ;
 int * pci_find_dbsf (int ,int ,int ,int) ;
 int pci_get_bus (int *) ;
 int pci_get_domain (int *) ;
 int pci_get_function (int *) ;
 int pci_get_slot (int *) ;

__attribute__((used)) static int
notify_siblings(device_t dev, int detaching)
{
 device_t sibling;
 int error, i;

 error = 0;
 for (i = 0; i < PCI_FUNCMAX; i++) {
  if (i == pci_get_function(dev))
   continue;
  sibling = pci_find_dbsf(pci_get_domain(dev), pci_get_bus(dev),
      pci_get_slot(dev), i);
  if (sibling == ((void*)0) || !device_is_attached(sibling))
   continue;
  if (detaching)
   error = T4_DETACH_CHILD(sibling);
  else
   (void)T4_ATTACH_CHILD(sibling);
  if (error)
   break;
 }
 return (error);
}
