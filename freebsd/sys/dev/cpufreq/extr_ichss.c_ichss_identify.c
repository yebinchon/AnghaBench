
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pmbase ;
typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int,char*,int ) ;
 int DPRINT (char*,int) ;
 scalar_t__ ICHSS_BM_OFFSET ;
 scalar_t__ ICHSS_CTRL_OFFSET ;
 int ICHSS_IO_REG ;
 int ICHSS_PMBASE_MASK ;
 int ICHSS_PMBASE_OFFSET ;
 scalar_t__ PCI_DEV_82801BA ;
 scalar_t__ PCI_DEV_82801CA ;
 scalar_t__ PCI_DEV_82801DB ;
 scalar_t__ PCI_DEV_82815_MC ;
 scalar_t__ PCI_VENDOR_INTEL ;
 int SYS_RES_IOPORT ;
 int bus_set_resource (int *,int ,int,scalar_t__,int) ;
 scalar_t__ device_find_child (int *,char*,int) ;
 scalar_t__ device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 int * ich_device ;
 int * pci_find_bsf (int ,int,int ) ;
 scalar_t__ pci_get_device (int *) ;
 int pci_get_revid (int *) ;
 scalar_t__ pci_get_vendor (int *) ;
 int pci_read_config (int *,int ,int) ;
 int printf (char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
ichss_identify(driver_t *driver, device_t parent)
{
 device_t child;
 uint32_t pmbase;

 if (resource_disabled("ichss", 0))
  return;






 if (device_get_unit(parent) != 0)
  return;


 if (device_find_child(parent, "ichss", -1))
  return;







 ich_device = pci_find_bsf(0, 0x1f, 0);
 if (ich_device == ((void*)0) ||
     pci_get_vendor(ich_device) != PCI_VENDOR_INTEL ||
     (pci_get_device(ich_device) != PCI_DEV_82801BA &&
     pci_get_device(ich_device) != PCI_DEV_82801CA &&
     pci_get_device(ich_device) != PCI_DEV_82801DB))
  return;






 if (pci_get_device(ich_device) == PCI_DEV_82801BA) {
  device_t hostb;

  hostb = pci_find_bsf(0, 0, 0);
  if (hostb != ((void*)0) &&
      pci_get_vendor(hostb) == PCI_VENDOR_INTEL &&
      pci_get_device(hostb) == PCI_DEV_82815_MC &&
      pci_get_revid(hostb) < 5)
   return;
 }


 pmbase = pci_read_config(ich_device, ICHSS_PMBASE_OFFSET,
     sizeof(pmbase));
 if ((pmbase & ICHSS_IO_REG) == 0) {
  printf("ichss: invalid PMBASE memory type\n");
  return;
 }
 pmbase &= ICHSS_PMBASE_MASK;
 if (pmbase == 0) {
  printf("ichss: invalid zero PMBASE address\n");
  return;
 }
 DPRINT("ichss: PMBASE is %#x\n", pmbase);

 child = BUS_ADD_CHILD(parent, 20, "ichss", 0);
 if (child == ((void*)0)) {
  device_printf(parent, "add SpeedStep child failed\n");
  return;
 }


 bus_set_resource(child, SYS_RES_IOPORT, 0, pmbase + ICHSS_BM_OFFSET,
     1);
 bus_set_resource(child, SYS_RES_IOPORT, 1, pmbase + ICHSS_CTRL_OFFSET,
     1);
}
