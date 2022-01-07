
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int * dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int * device_t ;


 int BUS_READ_IVAR (int *,int *,int ,uintptr_t*) ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 int PCI_IVAR_BUS ;
 int PCI_IVAR_DEVICE ;
 int PCI_IVAR_FUNCTION ;
 int PCI_IVAR_SLOT ;
 int PCI_IVAR_VENDOR ;
 int * device_get_parent (int *) ;
 int device_printf (int *,char*,...) ;
 int mxge_nvidia_ecrc_enable ;
 scalar_t__ mxge_verbose ;
 int * pci_find_bsf (int ,int ,int ) ;
 int pci_read_config (int *,int,int) ;
 int pci_write_config (int *,int,int,int) ;
 char* pmap_mapdev (int ,int ) ;
 int pmap_unmapdev (int ,int ) ;
 int trunc_page (int ) ;

__attribute__((used)) static void
mxge_enable_nvidia_ecrc(mxge_softc_t *sc)
{
 uint32_t val;
 unsigned long base, off;
 char *va, *cfgptr;
 device_t pdev, mcp55;
 uint16_t vendor_id, device_id, word;
 uintptr_t bus, slot, func, ivend, idev;
 uint32_t *ptr32;


 if (!mxge_nvidia_ecrc_enable)
  return;

 pdev = device_get_parent(device_get_parent(sc->dev));
 if (pdev == ((void*)0)) {
  device_printf(sc->dev, "could not find parent?\n");
  return;
 }
 vendor_id = pci_read_config(pdev, PCIR_VENDOR, 2);
 device_id = pci_read_config(pdev, PCIR_DEVICE, 2);

 if (vendor_id != 0x10de)
  return;

 base = 0;

 if (device_id == 0x005d) {

  base = 0xe0000000UL;
 } else if (device_id >= 0x0374 && device_id <= 0x378) {

  mcp55 = pci_find_bsf(0, 0, 0);
  if (mcp55 &&
      0x10de == pci_read_config(mcp55, PCIR_VENDOR, 2) &&
      0x0369 == pci_read_config(mcp55, PCIR_DEVICE, 2)) {
   word = pci_read_config(mcp55, 0x90, 2);
   base = ((unsigned long)word & 0x7ffeU) << 25;
  }
 }
 if (!base)
  return;
 BUS_READ_IVAR(device_get_parent(pdev), pdev,
        PCI_IVAR_BUS, &bus);
 BUS_READ_IVAR(device_get_parent(pdev), pdev,
        PCI_IVAR_SLOT, &slot);
 BUS_READ_IVAR(device_get_parent(pdev), pdev,
        PCI_IVAR_FUNCTION, &func);
 BUS_READ_IVAR(device_get_parent(pdev), pdev,
        PCI_IVAR_VENDOR, &ivend);
 BUS_READ_IVAR(device_get_parent(pdev), pdev,
        PCI_IVAR_DEVICE, &idev);

 off = base
  + 0x00100000UL * (unsigned long)bus
  + 0x00001000UL * (unsigned long)(func
       + 8 * slot);


 va = pmap_mapdev(trunc_page((vm_paddr_t)off), PAGE_SIZE);


 if (va == ((void*)0)) {
  device_printf(sc->dev, "pmap_kenter_temporary didn't\n");
  return;
 }

 cfgptr = va + (off & PAGE_MASK);


 vendor_id = *(uint16_t *)(cfgptr + PCIR_VENDOR);
 device_id = *(uint16_t *)(cfgptr + PCIR_DEVICE);
 if (! (vendor_id == ivend && device_id == idev)) {
  device_printf(sc->dev, "mapping failed: 0x%x:0x%x\n",
         vendor_id, device_id);
  pmap_unmapdev((vm_offset_t)va, PAGE_SIZE);
  return;
 }

 ptr32 = (uint32_t*)(cfgptr + 0x178);
 val = *ptr32;

 if (val == 0xffffffff) {
  device_printf(sc->dev, "extended mapping failed\n");
  pmap_unmapdev((vm_offset_t)va, PAGE_SIZE);
  return;
 }
 *ptr32 = val | 0x40;
 pmap_unmapdev((vm_offset_t)va, PAGE_SIZE);
 if (mxge_verbose)
  device_printf(sc->dev,
         "Enabled ECRC on upstream Nvidia bridge "
         "at %d:%d:%d\n",
         (int)bus, (int)slot, (int)func);
 return;
}
