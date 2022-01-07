
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int ENOENT ;
 int KASSERT (int,char*) ;
 scalar_t__ PCICAP_ID ;
 int PCIM_HTCAP_HOST ;
 int PCIM_HTCAP_SLAVE ;
 int PCIM_HTCMD_CAP_MASK ;
 scalar_t__ PCIR_HT_COMMAND ;
 scalar_t__ PCIY_HT ;
 scalar_t__ pci_find_next_cap (int ,scalar_t__,int,int*) ;
 scalar_t__ pci_read_config (int ,scalar_t__,int) ;

int
pci_find_next_htcap_method(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
 int ptr;
 uint16_t val;

 KASSERT(pci_read_config(child, start + PCICAP_ID, 1) == PCIY_HT,
     ("start capability is not HyperTransport capability"));
 ptr = start;





 for (;;) {

  if (pci_find_next_cap(child, PCIY_HT, ptr, &ptr) != 0)
   break;

  val = pci_read_config(child, ptr + PCIR_HT_COMMAND, 2);
  if (capability == PCIM_HTCAP_SLAVE ||
      capability == PCIM_HTCAP_HOST)
   val &= 0xe000;
  else
   val &= PCIM_HTCMD_CAP_MASK;
  if (val == capability) {
   if (capreg != ((void*)0))
    *capreg = ptr;
   return (0);
  }
 }

 return (ENOENT);
}
