
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int hdrtype; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int ENOENT ;
 int ENXIO ;
 int PCICAP_ID ;
 int PCICAP_NEXTPTR ;
 int PCIM_HDRTYPE ;



 int PCIM_STATUS_CAPPRESENT ;
 int PCIR_CAP_PTR ;
 int PCIR_CAP_PTR_2 ;
 int PCIR_STATUS ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_read_config (int ,int,int) ;

int
pci_find_cap_method(device_t dev, device_t child, int capability,
    int *capreg)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 uint32_t status;
 uint8_t ptr;




 status = pci_read_config(child, PCIR_STATUS, 2);
 if (!(status & PCIM_STATUS_CAPPRESENT))
  return (ENXIO);




 switch (cfg->hdrtype & PCIM_HDRTYPE) {
 case 128:
 case 130:
  ptr = PCIR_CAP_PTR;
  break;
 case 129:
  ptr = PCIR_CAP_PTR_2;
  break;
 default:

  return (ENXIO);
 }
 ptr = pci_read_config(child, ptr, 1);




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
