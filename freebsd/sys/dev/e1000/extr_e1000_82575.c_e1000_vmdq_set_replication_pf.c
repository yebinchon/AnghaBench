
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_VT_CTL ;
 int E1000_VT_CTL_VM_REPL_EN ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

void e1000_vmdq_set_replication_pf(struct e1000_hw *hw, bool enable)
{
 u32 vt_ctl = E1000_READ_REG(hw, E1000_VT_CTL);

 if (enable)
  vt_ctl |= E1000_VT_CTL_VM_REPL_EN;
 else
  vt_ctl &= ~E1000_VT_CTL_VM_REPL_EN;

 E1000_WRITE_REG(hw, E1000_VT_CTL, vt_ctl);
}
