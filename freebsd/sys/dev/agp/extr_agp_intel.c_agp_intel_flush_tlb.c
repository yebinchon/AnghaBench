
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_INTEL_AGPCTRL ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_intel_flush_tlb(device_t dev)
{
 u_int32_t val;

 val = pci_read_config(dev, AGP_INTEL_AGPCTRL, 4);
 pci_write_config(dev, AGP_INTEL_AGPCTRL, val & ~(1 << 7), 4);
 pci_write_config(dev, AGP_INTEL_AGPCTRL, val, 4);
}
