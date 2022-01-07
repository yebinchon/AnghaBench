
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcidev; } ;
typedef TYPE_1__* PHBA ;
typedef int HPT_U8 ;
typedef int HPT_U32 ;


 int pci_read_config (int ,int ,int) ;

HPT_U32 os_pci_readl (void *osext, HPT_U8 offset)
{
    return pci_read_config(((PHBA)osext)->pcidev, offset, 4);
}
