
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcidev; } ;
typedef TYPE_1__* PHBA ;
typedef int HPT_U8 ;


 int pci_write_config (int ,int ,int ,int) ;

void os_pci_writeb (void *osext, HPT_U8 offset, HPT_U8 value)
{
    pci_write_config(((PHBA)osext)->pcidev, offset, value, 1);
}
