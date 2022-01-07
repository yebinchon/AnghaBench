
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AGP_SIS_TLBFLUSH ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_sis_flush_tlb(device_t dev)
{
 pci_write_config(dev, AGP_SIS_TLBFLUSH, 0x02, 1);
}
