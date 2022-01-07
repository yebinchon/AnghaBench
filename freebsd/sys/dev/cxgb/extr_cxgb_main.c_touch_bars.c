
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int device_t ;


 int PCI_BASE_ADDRESS_1 ;
 int PCI_BASE_ADDRESS_3 ;
 int PCI_BASE_ADDRESS_5 ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int pdev ;

__attribute__((used)) static void
touch_bars(device_t dev)
{
}
