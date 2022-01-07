
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef scalar_t__ POINTER_UINT ;



void *
scic_cb_pci_get_bar(SCI_CONTROLLER_HANDLE_T controller,
    uint16_t bar_number)
{

 return ((void *)(POINTER_UINT)((uint32_t)bar_number << 28));
}
