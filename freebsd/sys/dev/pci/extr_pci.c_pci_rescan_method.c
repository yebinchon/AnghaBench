
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * device_t ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int PCIB_MAXFUNCS (int *) ;
 int PCIB_MAXSLOTS (int *) ;
 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_HDRTYPE ;
 int PCIR_VENDOR ;
 int PCI_MAXHDRTYPE ;
 int REG (int ,int) ;
 int device_delete_child (int *,int *) ;
 int device_get_children (int *,int ***,int*) ;
 int * device_get_parent (int *) ;
 int device_probe_and_attach (int *) ;
 int free (int **,int ) ;
 int ** malloc (int,int ,int) ;
 int pci_get_function (int *) ;
 int pci_get_slot (int *) ;
 int pci_identify_function (int *,int *,int,int,int,int) ;
 int pcib_get_bus (int *) ;
 int pcib_get_domain (int *) ;

int
pci_rescan_method(device_t dev)
{

 device_t pcib = device_get_parent(dev);
 device_t child, *devlist, *unchanged;
 int devcount, error, i, j, maxslots, oldcount;
 int busno, domain, s, f, pcifunchigh;
 uint8_t hdrtype;


 error = device_get_children(dev, &devlist, &devcount);
 if (error)
  return (error);
 if (devcount != 0) {
  unchanged = malloc(devcount * sizeof(device_t), M_TEMP,
      M_NOWAIT | M_ZERO);
  if (unchanged == ((void*)0)) {
   free(devlist, M_TEMP);
   return (ENOMEM);
  }
 } else
  unchanged = ((void*)0);

 domain = pcib_get_domain(dev);
 busno = pcib_get_bus(dev);
 maxslots = PCIB_MAXSLOTS(pcib);
 for (s = 0; s <= maxslots; s++) {

  f = 0;
  if (PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_VENDOR, 2) == 0xffff)
   continue;
  pcifunchigh = 0;
  hdrtype = PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_HDRTYPE, 1);
  if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
   continue;
  if (hdrtype & PCIM_MFDEV)
   pcifunchigh = PCIB_MAXFUNCS(pcib);
  for (f = 0; f <= pcifunchigh; f++) {
   if (PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_VENDOR, 2) == 0xffff)
    continue;





   for (i = 0; i < devcount; i++) {
    child = devlist[i];
    if (child == ((void*)0))
     continue;
    if (pci_get_slot(child) == s &&
        pci_get_function(child) == f) {
     unchanged[i] = child;
     goto next_func;
    }
   }

   pci_identify_function(pcib, dev, domain, busno, s, f);
  next_func:;
  }
 }


 for (i = 0; i < devcount; i++) {
  if (unchanged[i] != ((void*)0))
   continue;
  device_delete_child(dev, devlist[i]);
 }

 free(devlist, M_TEMP);
 oldcount = devcount;


 error = device_get_children(dev, &devlist, &devcount);
 if (error) {
  free(unchanged, M_TEMP);
  return (error);
 }

 for (i = 0; i < devcount; i++) {
  for (j = 0; j < oldcount; j++) {
   if (devlist[i] == unchanged[j])
    goto next_device;
  }

  device_probe_and_attach(devlist[i]);
 next_device:;
 }

 free(unchanged, M_TEMP);
 free(devlist, M_TEMP);
 return (0);

}
