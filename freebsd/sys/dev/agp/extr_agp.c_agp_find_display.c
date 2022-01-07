
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int devclass_t ;


 int M_TEMP ;
 scalar_t__ PCIC_DISPLAY ;
 scalar_t__ PCIS_DISPLAY_VGA ;
 scalar_t__ agp_find_caps (int ) ;
 int devclass_find (char*) ;
 int devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static device_t
agp_find_display(void)
{
 devclass_t pci = devclass_find("pci");
 device_t bus, dev = 0;
 device_t *kids;
 int busnum, numkids, i;

 for (busnum = 0; busnum < devclass_get_maxunit(pci); busnum++) {
  bus = devclass_get_device(pci, busnum);
  if (!bus)
   continue;
  if (device_get_children(bus, &kids, &numkids) != 0)
   continue;
  for (i = 0; i < numkids; i++) {
   dev = kids[i];
   if (pci_get_class(dev) == PCIC_DISPLAY
       && pci_get_subclass(dev) == PCIS_DISPLAY_VGA)
    if (agp_find_caps(dev)) {
     free(kids, M_TEMP);
     return dev;
    }

  }
  free(kids, M_TEMP);
 }

 return 0;
}
