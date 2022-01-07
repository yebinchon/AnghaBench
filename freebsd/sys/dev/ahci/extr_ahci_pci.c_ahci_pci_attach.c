
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct ahci_controller {int quirks; int vendorid; int subvendorid; int subdeviceid; scalar_t__ r_rid; int remap_offset; int remap_size; scalar_t__ remapped_devices; scalar_t__ r_msix_tab_rid; scalar_t__ r_msix_pba_rid; int msi; int numirqs; int * r_msix_pba; int * r_msix_table; void* r_mem; int deviceid; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; int quirks; } ;


 int AHCI_Q_1MSI ;
 int AHCI_Q_ABAR0 ;
 int AHCI_Q_NOMSI ;
 int AHCI_Q_NOMSIX ;
 int AHCI_Q_SATA1_UNIT0 ;
 int AHCI_VSCAP ;
 int ATA_INL (void*,int) ;
 int ENXIO ;
 int PCIC_STORAGE ;
 int PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 ;
 void* PCIR_BAR (int) ;
 int PCIS_STORAGE_NVM ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ahci_attach (int ) ;
 int ahci_free_mem (int ) ;
 TYPE_1__* ahci_ids ;
 int ahci_pci_ctlr_reset (int ) ;
 int ahci_pci_read_msix_bars (int ,scalar_t__*,scalar_t__*) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int device_get_name (int ) ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int min (int,int) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
ahci_pci_attach(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int error, i;
 uint32_t devid = pci_get_devid(dev);
 uint8_t revid = pci_get_revid(dev);
 int msi_count, msix_count;
 uint8_t table_bar = 0, pba_bar = 0;

 msi_count = pci_msi_count(dev);
 msix_count = pci_msix_count(dev);

 i = 0;
 while (ahci_ids[i].id != 0 &&
     (ahci_ids[i].id != devid ||
      ahci_ids[i].rev > revid))
  i++;
 ctlr->quirks = ahci_ids[i].quirks;


 if (pci_get_devid(dev) == 0x2363197b &&
     pci_get_subvendor(dev) == 0x1043 &&
     pci_get_subdevice(dev) == 0x81e4)
  ctlr->quirks |= AHCI_Q_SATA1_UNIT0;
 resource_int_value(device_get_name(dev), device_get_unit(dev),
     "quirks", &ctlr->quirks);
 ctlr->vendorid = pci_get_vendor(dev);
 ctlr->deviceid = pci_get_device(dev);
 ctlr->subvendorid = pci_get_subvendor(dev);
 ctlr->subdeviceid = pci_get_subdevice(dev);


 if (ctlr->quirks & AHCI_Q_ABAR0)
  ctlr->r_rid = PCIR_BAR(0);
 else
  ctlr->r_rid = PCIR_BAR(5);
 if (!(ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE)))
  return ENXIO;







 if (pci_get_vendor(dev) == 0x8086) {
  uint32_t vscap;

  vscap = ATA_INL(ctlr->r_mem, AHCI_VSCAP);
  if (vscap & 1) {
   uint32_t cap = ATA_INL(ctlr->r_mem, 0x800);
   int i;

   ctlr->remap_offset = 0x4000;
   ctlr->remap_size = 0x4000;






   for (i = 0; i < 3; i++) {
    if (cap & (1 << i) &&
        (ATA_INL(ctlr->r_mem, 0x880 + i * 0x80) ==
         ((PCIC_STORAGE << 16) |
          (PCIS_STORAGE_NVM << 8) |
          PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0))) {
     ctlr->remapped_devices++;
    }
   }


   if (ctlr->remapped_devices > 0) {
    device_printf(dev, "Detected %d nvme remapped devices\n",
        ctlr->remapped_devices);
    ctlr->quirks |= (AHCI_Q_NOMSIX | AHCI_Q_NOMSI);
   }
  }
 }


 if (ctlr->quirks & AHCI_Q_NOMSIX)
  msix_count = 0;


 if (msix_count > 0) {
  error = ahci_pci_read_msix_bars(dev, &table_bar, &pba_bar);
  if (error == 0) {
   ctlr->r_msix_tab_rid = table_bar;
   ctlr->r_msix_pba_rid = pba_bar;
  } else {

   msix_count = 0;
  }
 }


 if (msix_count > 0) {




  ctlr->r_msix_table = ((void*)0);
  if (ctlr->r_msix_tab_rid != ctlr->r_rid) {

   ctlr->r_msix_table = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
       &ctlr->r_msix_tab_rid, RF_ACTIVE);
   if (ctlr->r_msix_table == ((void*)0)) {
    ahci_free_mem(dev);
    return (ENXIO);
   }
  }





  ctlr->r_msix_pba = ((void*)0);
  if ((ctlr->r_msix_pba_rid != ctlr->r_msix_tab_rid) &&
      (ctlr->r_msix_pba_rid != ctlr->r_rid)) {

   ctlr->r_msix_pba = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
       &ctlr->r_msix_pba_rid, RF_ACTIVE);
   if (ctlr->r_msix_pba == ((void*)0)) {
    ahci_free_mem(dev);
    return (ENXIO);
   }
  }
 }

 pci_enable_busmaster(dev);

 if ((error = ahci_pci_ctlr_reset(dev)) != 0) {
  ahci_free_mem(dev);
  return (error);
 }





 if (ctlr->quirks & AHCI_Q_NOMSI)
  ctlr->msi = 0;
 else if (ctlr->quirks & AHCI_Q_1MSI)
  ctlr->msi = 1;
 else
  ctlr->msi = 2;
 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "msi", &ctlr->msi);
 ctlr->numirqs = 1;
 if (msi_count == 0 && msix_count == 0)
  ctlr->msi = 0;
 if (ctlr->msi < 0)
  ctlr->msi = 0;
 else if (ctlr->msi == 1) {
  msi_count = min(1, msi_count);
  msix_count = min(1, msix_count);
 } else if (ctlr->msi > 1)
  ctlr->msi = 2;


 if (ctlr->msi > 0) {
  error = ENXIO;


  if (msix_count > 0) {
   error = pci_alloc_msix(dev, &msix_count);
   if (error == 0)
    ctlr->numirqs = msix_count;
  }





  if ((error != 0) && (msi_count > 0)) {
   error = pci_alloc_msi(dev, &msi_count);
   if (error == 0)
    ctlr->numirqs = msi_count;
  }


  if (error != 0) {
   ctlr->msi = 0;
   device_printf(dev, "Failed to allocate MSI/MSI-x, "
       "falling back to INTx\n");
  }
 }

 error = ahci_attach(dev);
 if (error != 0) {
  if (ctlr->msi > 0)
   pci_release_msi(dev);
  ahci_free_mem(dev);
 }
 return error;
}
