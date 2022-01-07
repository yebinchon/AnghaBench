
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; } ;


 int DEBUGFUNC (char*) ;
 int E1000_GCR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int PCIE_NO_SNOOP_ALL ;
 scalar_t__ e1000_bus_type_pci_express ;

void e1000_set_pcie_no_snoop_generic(struct e1000_hw *hw, u32 no_snoop)
{
 u32 gcr;

 DEBUGFUNC("e1000_set_pcie_no_snoop_generic");

 if (hw->bus.type != e1000_bus_type_pci_express)
  return;

 if (no_snoop) {
  gcr = E1000_READ_REG(hw, E1000_GCR);
  gcr &= ~(PCIE_NO_SNOOP_ALL);
  gcr |= no_snoop;
  E1000_WRITE_REG(hw, E1000_GCR, gcr);
 }
}
