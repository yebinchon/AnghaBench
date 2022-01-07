
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_devinfo {int dummy; } ;


 int ENXIO ;
 int IOV_READ (struct pci_devinfo*,int ,int) ;
 int IOV_WRITE (struct pci_devinfo*,int ,int,int) ;
 scalar_t__ PAGE_SHIFT ;
 int PCIR_SRIOV_PAGE_CAP ;
 int PCIR_SRIOV_PAGE_SIZE ;
 scalar_t__ PCI_SRIOV_BASE_PAGE_SHIFT ;

__attribute__((used)) static int
pci_iov_config_page_size(struct pci_devinfo *dinfo)
{
 uint32_t page_cap, page_size;

 page_cap = IOV_READ(dinfo, PCIR_SRIOV_PAGE_CAP, 4);





 if (PAGE_SHIFT < PCI_SRIOV_BASE_PAGE_SHIFT)
  page_size = (1 << 0);
 else
  page_size = (1 << (PAGE_SHIFT - PCI_SRIOV_BASE_PAGE_SHIFT));


 if (!(page_size & page_cap))
  return (ENXIO);

 IOV_WRITE(dinfo, PCIR_SRIOV_PAGE_SIZE, page_size, 4);
 return (0);
}
