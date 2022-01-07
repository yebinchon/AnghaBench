
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; } ;


 int DEBUGFUNC (char*) ;
 int PCIX_COMMAND_MMRBC_MASK ;
 int PCIX_COMMAND_MMRBC_SHIFT ;
 int PCIX_COMMAND_REGISTER ;
 int PCIX_STATUS_HI_MMRBC_2K ;
 int PCIX_STATUS_HI_MMRBC_4K ;
 int PCIX_STATUS_HI_MMRBC_MASK ;
 int PCIX_STATUS_HI_MMRBC_SHIFT ;
 int PCIX_STATUS_REGISTER_HI ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_read_pci_cfg (struct e1000_hw*,int ,int*) ;
 int e1000_write_pci_cfg (struct e1000_hw*,int ,int*) ;

void e1000_pcix_mmrbc_workaround_generic(struct e1000_hw *hw)
{
 u16 cmd_mmrbc;
 u16 pcix_cmd;
 u16 pcix_stat_hi_word;
 u16 stat_mmrbc;

 DEBUGFUNC("e1000_pcix_mmrbc_workaround_generic");


 if (hw->bus.type != e1000_bus_type_pcix)
  return;

 e1000_read_pci_cfg(hw, PCIX_COMMAND_REGISTER, &pcix_cmd);
 e1000_read_pci_cfg(hw, PCIX_STATUS_REGISTER_HI, &pcix_stat_hi_word);
 cmd_mmrbc = (pcix_cmd & PCIX_COMMAND_MMRBC_MASK) >>
       PCIX_COMMAND_MMRBC_SHIFT;
 stat_mmrbc = (pcix_stat_hi_word & PCIX_STATUS_HI_MMRBC_MASK) >>
        PCIX_STATUS_HI_MMRBC_SHIFT;
 if (stat_mmrbc == PCIX_STATUS_HI_MMRBC_4K)
  stat_mmrbc = PCIX_STATUS_HI_MMRBC_2K;
 if (cmd_mmrbc > stat_mmrbc) {
  pcix_cmd &= ~PCIX_COMMAND_MMRBC_MASK;
  pcix_cmd |= stat_mmrbc << PCIX_COMMAND_MMRBC_SHIFT;
  e1000_write_pci_cfg(hw, PCIX_COMMAND_REGISTER, &pcix_cmd);
 }
}
