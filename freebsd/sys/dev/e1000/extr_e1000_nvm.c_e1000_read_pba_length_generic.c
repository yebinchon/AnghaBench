
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_INVALID_ARGUMENT ;
 scalar_t__ E1000_ERR_NVM_PBA_SECTION ;
 int E1000_PBANUM_LENGTH ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ NVM_PBA_OFFSET_0 ;
 scalar_t__ NVM_PBA_OFFSET_1 ;
 scalar_t__ NVM_PBA_PTR_GUARD ;
 scalar_t__ stub1 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 scalar_t__ stub3 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;

s32 e1000_read_pba_length_generic(struct e1000_hw *hw, u32 *pba_num_size)
{
 s32 ret_val;
 u16 nvm_data;
 u16 pba_ptr;
 u16 length;

 DEBUGFUNC("e1000_read_pba_length_generic");

 if (pba_num_size == ((void*)0)) {
  DEBUGOUT("PBA buffer size was null\n");
  return -E1000_ERR_INVALID_ARGUMENT;
 }

 ret_val = hw->nvm.ops.read(hw, NVM_PBA_OFFSET_0, 1, &nvm_data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }

 ret_val = hw->nvm.ops.read(hw, NVM_PBA_OFFSET_1, 1, &pba_ptr);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }


 if (nvm_data != NVM_PBA_PTR_GUARD) {
  *pba_num_size = E1000_PBANUM_LENGTH;
  return E1000_SUCCESS;
 }

 ret_val = hw->nvm.ops.read(hw, pba_ptr, 1, &length);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }

 if (length == 0xFFFF || length == 0) {
  DEBUGOUT("NVM PBA number section invalid length\n");
  return -E1000_ERR_NVM_PBA_SECTION;
 }




 *pba_num_size = ((u32)length * 2) - 1;

 return E1000_SUCCESS;
}
