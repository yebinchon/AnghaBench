
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct e1000_hw*,int ,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_NVM_INIT_CTRL2_MNGM ;
 int FALSE ;
 int NVM_INIT_CONTROL2_REG ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static bool e1000_check_mng_mode_82574(struct e1000_hw *hw)
{
 u16 data;
 s32 ret_val;

 DEBUGFUNC("e1000_check_mng_mode_82574");

 ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL2_REG, 1, &data);
 if (ret_val)
  return FALSE;

 return (data & E1000_NVM_INIT_CTRL2_MNGM) != 0;
}
