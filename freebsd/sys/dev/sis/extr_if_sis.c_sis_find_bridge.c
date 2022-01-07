
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int * devclass_t ;


 int M_TEMP ;
 scalar_t__ SIS_VENDORID ;
 int * devclass_find (char*) ;
 int devclass_get_devices (int *,int ***,int*) ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 int free (int **,int ) ;
 int pci_get_device (int *) ;
 scalar_t__ pci_get_vendor (int *) ;

__attribute__((used)) static device_t
sis_find_bridge(device_t dev)
{
 devclass_t pci_devclass;
 device_t *pci_devices;
 int pci_count = 0;
 device_t *pci_children;
 int pci_childcount = 0;
 device_t *busp, *childp;
 device_t child = ((void*)0);
 int i, j;

 if ((pci_devclass = devclass_find("pci")) == ((void*)0))
  return (((void*)0));

 devclass_get_devices(pci_devclass, &pci_devices, &pci_count);

 for (i = 0, busp = pci_devices; i < pci_count; i++, busp++) {
  if (device_get_children(*busp, &pci_children, &pci_childcount))
   continue;
  for (j = 0, childp = pci_children;
      j < pci_childcount; j++, childp++) {
   if (pci_get_vendor(*childp) == SIS_VENDORID &&
       pci_get_device(*childp) == 0x0008) {
    child = *childp;
    free(pci_children, M_TEMP);
    goto done;
   }
  }
  free(pci_children, M_TEMP);
 }

done:
 free(pci_devices, M_TEMP);
 return (child);
}
