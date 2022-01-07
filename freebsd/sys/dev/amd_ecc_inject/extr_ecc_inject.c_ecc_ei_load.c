
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPUID_TO_FAMILY (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 int DRAM_ECC_EN ;
 int ENXIO ;
 int NB_MCA_CFG ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int * nbdev ;
 int * pci_find_bsf (int ,int,int) ;
 int pci_read_config (int *,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
ecc_ei_load(void)
{
 uint32_t val;

 if (cpu_vendor_id != CPU_VENDOR_AMD || CPUID_TO_FAMILY(cpu_id) < 0x10) {
  printf("DRAM ECC error injection is not supported\n");
  return (ENXIO);
 }
 nbdev = pci_find_bsf(0, 24, 3);
 if (nbdev == ((void*)0)) {
  printf("Couldn't find NB PCI device\n");
  return (ENXIO);
 }
 val = pci_read_config(nbdev, NB_MCA_CFG, 4);
 if ((val & DRAM_ECC_EN) == 0) {
  printf("DRAM ECC is not supported or disabled\n");
  return (ENXIO);
 }
 printf("DRAM ECC error injection support loaded\n");
 return (0);
}
