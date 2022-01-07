
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int ENOENT ;
 int KASSERT (int,char*) ;
 scalar_t__ PCICAP_ID ;
 scalar_t__ PCICAP_NEXTPTR ;
 int pci_read_config (int ,scalar_t__,int) ;

int
pci_find_next_cap_method(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
 uint8_t ptr;

 KASSERT(pci_read_config(child, start + PCICAP_ID, 1) == capability,
     ("start capability is not expected capability"));

 ptr = pci_read_config(child, start + PCICAP_NEXTPTR, 1);
 while (ptr != 0) {
  if (pci_read_config(child, ptr + PCICAP_ID, 1) == capability) {
   if (capreg != ((void*)0))
    *capreg = ptr;
   return (0);
  }
  ptr = pci_read_config(child, ptr + PCICAP_NEXTPTR, 1);
 }

 return (ENOENT);
}
