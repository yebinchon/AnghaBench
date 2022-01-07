
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ IXGBE_NOT_IMPLEMENTED ;
 int IXGBE_PBANUM0_PTR ;
 int IXGBE_PBANUM1_PTR ;
 int IXGBE_PBANUM_PTR_GUARD ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int*) ;

s32 ixgbe_read_pba_num_generic(struct ixgbe_hw *hw, u32 *pba_num)
{
 s32 ret_val;
 u16 data;

 DEBUGFUNC("ixgbe_read_pba_num_generic");

 ret_val = hw->eeprom.ops.read(hw, IXGBE_PBANUM0_PTR, &data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 } else if (data == IXGBE_PBANUM_PTR_GUARD) {
  DEBUGOUT("NVM Not supported\n");
  return IXGBE_NOT_IMPLEMENTED;
 }
 *pba_num = (u32)(data << 16);

 ret_val = hw->eeprom.ops.read(hw, IXGBE_PBANUM1_PTR, &data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }
 *pba_num |= data;

 return IXGBE_SUCCESS;
}
