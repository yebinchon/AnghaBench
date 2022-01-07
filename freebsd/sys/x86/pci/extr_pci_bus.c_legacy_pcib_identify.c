
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int driver_t ;
typedef int device_t ;
typedef int devclass_t ;


 int BUS_ADD_CHILD (int ,int,char*,int) ;
 int M_TEMP ;
 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_CLASS ;
 int PCIR_DEVVENDOR ;
 int PCIR_HDRTYPE ;
 int PCIR_SUBCLASS ;
 int PCI_FUNCMAX ;
 int PCI_MAXHDRTYPE ;
 int PCI_SLOTMAX ;
 scalar_t__ bootverbose ;
 int devclass_find (char*) ;
 scalar_t__ devclass_get_device (int ,int ) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int device_get_name (int ) ;
 int device_set_desc (int ,char const*) ;
 int free (int *,int ) ;
 int legacy_get_pcibus (int ) ;
 char* legacy_pcib_is_host_bridge (int,int,int,int,int,int,int*) ;
 int legacy_pcib_read_config (int ,int,int,int,int ,int) ;
 int legacy_set_pcibus (int ,int) ;
 int legacy_set_pcifunc (int ,int) ;
 int legacy_set_pcislot (int ,int) ;
 scalar_t__ pci_cfgregopen () ;
 int printf (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
legacy_pcib_identify(driver_t *driver, device_t parent)
{
 int bus, slot, func;
 uint8_t hdrtype;
 int found = 0;
 int pcifunchigh;
 int found824xx = 0;
 int found_orion = 0;
 device_t child;
 devclass_t pci_devclass;

 if (pci_cfgregopen() == 0)
  return;





 if ((pci_devclass = devclass_find("pci")) &&
  devclass_get_device(pci_devclass, 0))
  return;


 bus = 0;
 retry:
 for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
  func = 0;
  hdrtype = legacy_pcib_read_config(0, bus, slot, func,
       PCIR_HDRTYPE, 1);






  if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
   continue;
  if ((hdrtype & PCIM_MFDEV) &&
      (!found_orion || hdrtype != 0xff))
   pcifunchigh = PCI_FUNCMAX;
  else
   pcifunchigh = 0;
  for (func = 0; func <= pcifunchigh; func++) {



   uint32_t id;
   uint8_t class, subclass, busnum;
   const char *s;
   device_t *devs;
   int ndevs, i;

   id = legacy_pcib_read_config(0, bus, slot, func,
          PCIR_DEVVENDOR, 4);
   if (id == -1)
    continue;
   class = legacy_pcib_read_config(0, bus, slot, func,
             PCIR_CLASS, 1);
   subclass = legacy_pcib_read_config(0, bus, slot, func,
         PCIR_SUBCLASS, 1);

   s = legacy_pcib_is_host_bridge(bus, slot, func,
            id, class, subclass,
            &busnum);
   if (s == ((void*)0))
    continue;






   if (device_get_children(parent, &devs, &ndevs) == 0) {
    for (i = 0; s != ((void*)0) && i < ndevs; i++) {
     if (strcmp(device_get_name(devs[i]),
         "pcib") != 0)
      continue;
     if (legacy_get_pcibus(devs[i]) == busnum)
      s = ((void*)0);
    }
    free(devs, M_TEMP);
   }

   if (s == ((void*)0))
    continue;




   child = BUS_ADD_CHILD(parent, 100,
           "pcib", busnum);
   device_set_desc(child, s);
   legacy_set_pcibus(child, busnum);
   legacy_set_pcislot(child, slot);
   legacy_set_pcifunc(child, func);

   found = 1;
   if (id == 0x12258086)
    found824xx = 1;
   if (id == 0x84c48086)
    found_orion = 1;
  }
 }
 if (found824xx && bus == 0) {
  bus++;
  goto retry;
 }






 if (!found) {
  if (bootverbose)
   printf(
 "legacy_pcib_identify: no bridge found, adding pcib0 anyway\n");
  child = BUS_ADD_CHILD(parent, 100, "pcib", 0);
  legacy_set_pcibus(child, 0);
 }
}
