
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int addr; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_ERR_PARAM ;
 int E1000_SUCCESS ;
 int MAX_PHY_REG_ADDRESS ;
 int PHY_OP_WRITE ;
 int PHY_PREAMBLE ;
 int PHY_PREAMBLE_SIZE ;
 int PHY_SOF ;
 int PHY_TURNAROUND ;
 int e1000_shift_out_mdi_bits_82543 (struct e1000_hw*,int,int) ;

__attribute__((used)) static s32 e1000_write_phy_reg_82543(struct e1000_hw *hw, u32 offset, u16 data)
{
 u32 mdic;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_write_phy_reg_82543");

 if (offset > MAX_PHY_REG_ADDRESS) {
  DEBUGOUT1("PHY Address %d is out of range\n", offset);
  ret_val = -E1000_ERR_PARAM;
  goto out;
 }







 e1000_shift_out_mdi_bits_82543(hw, PHY_PREAMBLE, PHY_PREAMBLE_SIZE);
 mdic = ((PHY_TURNAROUND) | (offset << 2) | (hw->phy.addr << 7) |
  (PHY_OP_WRITE << 12) | (PHY_SOF << 14));
 mdic <<= 16;
 mdic |= (u32)data;

 e1000_shift_out_mdi_bits_82543(hw, mdic, 32);

out:
 return ret_val;
}
