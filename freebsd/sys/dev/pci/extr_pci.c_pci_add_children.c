
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dev; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int DELAY (int) ;
 int PCIB_MAXFUNCS (int ) ;
 int PCIB_MAXSLOTS (int ) ;
 int PCIB_TRY_ENABLE_ARI (int ,int ) ;
 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_HDRTYPE ;
 int PCI_MAXHDRTYPE ;
 int REG (int ,int) ;
 int device_get_parent (int ) ;
 scalar_t__ pci_enable_ari ;
 struct pci_devinfo* pci_identify_function (int ,int ,int,int,int,int) ;

void
pci_add_children(device_t dev, int domain, int busno)
{

 device_t pcib = device_get_parent(dev);
 struct pci_devinfo *dinfo;
 int maxslots;
 int s, f, pcifunchigh;
 uint8_t hdrtype;
 int first_func;







 dinfo = pci_identify_function(pcib, dev, domain, busno, 0, 0);
 if (dinfo != ((void*)0) && pci_enable_ari)
  PCIB_TRY_ENABLE_ARI(pcib, dinfo->cfg.dev);





 first_func = 1;

 maxslots = PCIB_MAXSLOTS(pcib);
 for (s = 0; s <= maxslots; s++, first_func = 0) {
  pcifunchigh = 0;
  f = 0;
  DELAY(1);
  hdrtype = PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_HDRTYPE, 1);
  if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
   continue;
  if (hdrtype & PCIM_MFDEV)
   pcifunchigh = PCIB_MAXFUNCS(pcib);
  for (f = first_func; f <= pcifunchigh; f++)
   pci_identify_function(pcib, dev, domain, busno, s, f);
 }

}
