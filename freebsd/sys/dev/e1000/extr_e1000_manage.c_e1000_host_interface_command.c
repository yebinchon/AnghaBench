
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int asf_firmware_present; int arc_subsystem_valid; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_HOST_INTERFACE_COMMAND ;
 int E1000_HICR ;
 scalar_t__ E1000_HICR_C ;
 scalar_t__ E1000_HICR_EN ;
 scalar_t__ E1000_HICR_SV ;
 scalar_t__ E1000_HI_COMMAND_TIMEOUT ;
 scalar_t__ E1000_HI_MAX_BLOCK_BYTE_LENGTH ;
 int E1000_HOST_IF ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_READ_REG_ARRAY_DWORD (struct e1000_hw*,int ,scalar_t__) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 int E1000_WRITE_REG_ARRAY_DWORD (struct e1000_hw*,int ,scalar_t__,scalar_t__) ;
 int msec_delay (int) ;

s32 e1000_host_interface_command(struct e1000_hw *hw, u8 *buffer, u32 length)
{
 u32 hicr, i;

 DEBUGFUNC("e1000_host_interface_command");

 if (!(hw->mac.arc_subsystem_valid)) {
  DEBUGOUT("Hardware doesn't support host interface command.\n");
  return E1000_SUCCESS;
 }

 if (!hw->mac.asf_firmware_present) {
  DEBUGOUT("Firmware is not present.\n");
  return E1000_SUCCESS;
 }

 if (length == 0 || length & 0x3 ||
     length > E1000_HI_MAX_BLOCK_BYTE_LENGTH) {
  DEBUGOUT("Buffer length failure.\n");
  return -E1000_ERR_HOST_INTERFACE_COMMAND;
 }


 hicr = E1000_READ_REG(hw, E1000_HICR);
 if (!(hicr & E1000_HICR_EN)) {
  DEBUGOUT("E1000_HOST_EN bit disabled.\n");
  return -E1000_ERR_HOST_INTERFACE_COMMAND;
 }


 length >>= 2;




 for (i = 0; i < length; i++)
  E1000_WRITE_REG_ARRAY_DWORD(hw, E1000_HOST_IF, i,
         *((u32 *)buffer + i));


 E1000_WRITE_REG(hw, E1000_HICR, hicr | E1000_HICR_C);

 for (i = 0; i < E1000_HI_COMMAND_TIMEOUT; i++) {
  hicr = E1000_READ_REG(hw, E1000_HICR);
  if (!(hicr & E1000_HICR_C))
   break;
  msec_delay(1);
 }


 if (i == E1000_HI_COMMAND_TIMEOUT ||
     (!(E1000_READ_REG(hw, E1000_HICR) & E1000_HICR_SV))) {
  DEBUGOUT("Command has failed with no status valid.\n");
  return -E1000_ERR_HOST_INTERFACE_COMMAND;
 }

 for (i = 0; i < length; i++)
  *((u32 *)buffer + i) = E1000_READ_REG_ARRAY_DWORD(hw,
          E1000_HOST_IF,
          i);

 return E1000_SUCCESS;
}
