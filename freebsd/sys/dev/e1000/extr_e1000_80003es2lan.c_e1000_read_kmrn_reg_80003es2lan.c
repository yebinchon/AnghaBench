
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_KMRNCTRLSTA ;
 int E1000_KMRNCTRLSTA_OFFSET ;
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ;
 int E1000_KMRNCTRLSTA_REN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_acquire_mac_csr_80003es2lan (struct e1000_hw*) ;
 int e1000_release_mac_csr_80003es2lan (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_read_kmrn_reg_80003es2lan(struct e1000_hw *hw, u32 offset,
        u16 *data)
{
 u32 kmrnctrlsta;
 s32 ret_val;

 DEBUGFUNC("e1000_read_kmrn_reg_80003es2lan");

 ret_val = e1000_acquire_mac_csr_80003es2lan(hw);
 if (ret_val)
  return ret_val;

 kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
         E1000_KMRNCTRLSTA_OFFSET) | E1000_KMRNCTRLSTA_REN;
 E1000_WRITE_REG(hw, E1000_KMRNCTRLSTA, kmrnctrlsta);
 E1000_WRITE_FLUSH(hw);

 usec_delay(2);

 kmrnctrlsta = E1000_READ_REG(hw, E1000_KMRNCTRLSTA);
 *data = (u16)kmrnctrlsta;

 e1000_release_mac_csr_80003es2lan(hw);

 return ret_val;
}
