
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* read ) (struct e1000_hw*,int ,int,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ nvm; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_ERR_NVM ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int NVM_INIT_CONTROL2_REG ;
 int NVM_SWDPIO_EXT_SHIFT ;
 int NVM_WORD0F_SWPDIO_EXT_MASK ;
 scalar_t__ e1000_82543 ;
 int e1000_setup_link_generic (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static s32 e1000_setup_link_82543(struct e1000_hw *hw)
{
 u32 ctrl_ext;
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_setup_link_82543");
 if (hw->mac.type == e1000_82543) {
  ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL2_REG, 1, &data);
  if (ret_val) {
   DEBUGOUT("NVM Read Error\n");
   ret_val = -E1000_ERR_NVM;
   goto out;
  }
  ctrl_ext = ((data & NVM_WORD0F_SWPDIO_EXT_MASK) <<
       NVM_SWDPIO_EXT_SHIFT);
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 }

 ret_val = e1000_setup_link_generic(hw);

out:
 return ret_val;
}
