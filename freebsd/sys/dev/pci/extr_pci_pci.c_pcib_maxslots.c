
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int PCIEM_FLAGS_TYPE ;
 int PCIEM_TYPE_DOWNSTREAM_PORT ;
 int PCIEM_TYPE_ROOT_PORT ;
 scalar_t__ PCIER_FLAGS ;
 int PCIY_EXPRESS ;
 int PCI_SLOTMAX ;
 scalar_t__ pci_find_cap (int ,int ,scalar_t__*) ;
 int pci_read_config (int ,scalar_t__,int) ;

int
pcib_maxslots(device_t dev)
{
 return (PCI_SLOTMAX);
}
