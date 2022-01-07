
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_osdep {int dev; } ;
struct TYPE_2__ {int pci_cmd_word; } ;
struct e1000_hw {TYPE_1__ bus; scalar_t__ back; } ;


 int CMD_MEM_WRT_INVALIDATE ;
 int PCIR_COMMAND ;
 int pci_write_config (int ,int ,int,int) ;

void
e1000_pci_set_mwi(struct e1000_hw *hw)
{
 pci_write_config(((struct e1000_osdep *)hw->back)->dev, PCIR_COMMAND,
     (hw->bus.pci_cmd_word | CMD_MEM_WRT_INVALIDATE), 2);
}
