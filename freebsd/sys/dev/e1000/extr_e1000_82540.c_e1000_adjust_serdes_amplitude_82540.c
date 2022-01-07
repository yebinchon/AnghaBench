
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct e1000_hw*,int ,int,int *) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ phy; TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int M88E1000_PHY_EXT_CTRL ;
 int NVM_RESERVED_WORD ;
 int NVM_SERDES_AMPLITUDE ;
 int NVM_SERDES_AMPLITUDE_MASK ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_adjust_serdes_amplitude_82540(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 nvm_data;

 DEBUGFUNC("e1000_adjust_serdes_amplitude_82540");

 ret_val = hw->nvm.ops.read(hw, NVM_SERDES_AMPLITUDE, 1, &nvm_data);
 if (ret_val)
  goto out;

 if (nvm_data != NVM_RESERVED_WORD) {

  nvm_data &= NVM_SERDES_AMPLITUDE_MASK;
  ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_EXT_CTRL,
      nvm_data);
  if (ret_val)
   goto out;
 }

out:
 return ret_val;
}
