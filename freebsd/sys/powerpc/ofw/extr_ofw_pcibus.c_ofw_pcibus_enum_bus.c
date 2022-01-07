
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct pci_devinfo {int dummy; } ;
struct TYPE_5__ {scalar_t__ intline; } ;
struct TYPE_6__ {TYPE_2__ cfg; } ;
struct TYPE_4__ {int obd_node; int * obd_model; int * obd_type; int * obd_compat; int * obd_name; } ;
struct ofw_pcibus_devinfo {TYPE_3__ opd_dinfo; TYPE_1__ opd_obdinfo; int * opd_dma_tag; } ;
typedef int device_t ;


 int DELAY (int) ;
 int PCIB_MAXSLOTS (int ) ;
 int PCIB_READ_CONFIG (int ,int ,int,int,int ,int) ;
 int PCIB_WRITE_CONFIG (int ,int ,int,int,int ,scalar_t__,int) ;
 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_HDRTYPE ;
 int PCIR_INTLINE ;
 int PCI_FUNCMAX ;
 scalar_t__ PCI_INVALID_IRQ ;
 int PCI_MAXHDRTYPE ;
 int device_get_parent (int ) ;
 int pci_add_child (int ,struct pci_devinfo*) ;
 int * pci_find_dbsf (int ,int ,int,int) ;
 scalar_t__ pci_read_device (int ,int ,int ,int ,int,int) ;

__attribute__((used)) static void
ofw_pcibus_enum_bus(device_t dev, u_int domain, u_int busno)
{
 device_t pcib;
 struct ofw_pcibus_devinfo *dinfo;
 int maxslots;
 int s, f, pcifunchigh;
 uint8_t hdrtype;

 pcib = device_get_parent(dev);

 maxslots = PCIB_MAXSLOTS(pcib);
 for (s = 0; s <= maxslots; s++) {
  pcifunchigh = 0;
  f = 0;
  DELAY(1);
  hdrtype = PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_HDRTYPE, 1);
  if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
   continue;
  if (hdrtype & PCIM_MFDEV)
   pcifunchigh = PCI_FUNCMAX;
  for (f = 0; f <= pcifunchigh; f++) {

   if (pci_find_dbsf(domain, busno, s, f) != ((void*)0))
    continue;

   dinfo = (struct ofw_pcibus_devinfo *)pci_read_device(
       pcib, dev, domain, busno, s, f);
   if (dinfo == ((void*)0))
    continue;

   dinfo->opd_dma_tag = ((void*)0);
   dinfo->opd_obdinfo.obd_node = -1;

   dinfo->opd_obdinfo.obd_name = ((void*)0);
   dinfo->opd_obdinfo.obd_compat = ((void*)0);
   dinfo->opd_obdinfo.obd_type = ((void*)0);
   dinfo->opd_obdinfo.obd_model = ((void*)0);





   if (dinfo->opd_dinfo.cfg.intline == 0) {
    dinfo->opd_dinfo.cfg.intline = PCI_INVALID_IRQ;
    PCIB_WRITE_CONFIG(pcib, busno, s, f,
        PCIR_INTLINE, PCI_INVALID_IRQ, 1);
   }

   pci_add_child(dev, (struct pci_devinfo *)dinfo);
  }
 }
}
