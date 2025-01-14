
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int hdrtype; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_2__ adapter_t ;


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
t3_os_find_pci_capability(adapter_t *sc, int cap)
{
 device_t dev;
 struct pci_devinfo *dinfo;
 pcicfgregs *cfg;
 uint32_t status;
 uint8_t ptr;

 dev = sc->dev;
 dinfo = device_get_ivars(dev);
 cfg = &dinfo->cfg;

 status = pci_read_config(dev, PCIR_STATUS, 2);
 if (!(status & PCIM_STATUS_CAPPRESENT))
  return (0);

 switch (cfg->hdrtype & PCIM_HDRTYPE) {
 case 0:
 case 1:
  ptr = PCIR_CAP_PTR;
  break;
 case 2:
  ptr = PCIR_CAP_PTR_2;
  break;
 default:
  return (0);
  break;
 }
 ptr = pci_read_config(dev, ptr, 1);

 while (ptr != 0) {
  if (pci_read_config(dev, ptr + PCICAP_ID, 1) == cap)
   return (ptr);
  ptr = pci_read_config(dev, ptr + PCICAP_NEXTPTR, 1);
 }

 return (0);
}
