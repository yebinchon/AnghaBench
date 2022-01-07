
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int const) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int const) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct TYPE_5__ {int checksum; int buf_lenl; scalar_t__ buf_lenh; int cmd; } ;
struct TYPE_6__ {TYPE_1__ req; } ;
struct ixgbe_hic_read_shadow_ram {scalar_t__ pad3; scalar_t__ pad2; int length; int address; TYPE_2__ hdr; } ;
typedef scalar_t__ s32 ;
typedef int buffer ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int FW_DEFAULT_CHECKSUM ;
 int FW_MAX_READ_BUFFER_SIZE ;
 int FW_NVM_DATA_OFFSET ;
 int FW_READ_SHADOW_RAM_CMD ;
 int FW_READ_SHADOW_RAM_LEN ;
 int IXGBE_CPU_TO_BE16 (int) ;
 int IXGBE_CPU_TO_BE32 (int) ;
 int IXGBE_FLEX_MNG ;
 int IXGBE_GSSR_EEP_SM ;
 int IXGBE_GSSR_SW_MNG_SM ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_hic_unlocked (struct ixgbe_hw*,int*,int,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int const) ;
 int stub2 (struct ixgbe_hw*,int const) ;

s32 ixgbe_read_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
         u16 offset, u16 words, u16 *data)
{
 const u32 mask = IXGBE_GSSR_SW_MNG_SM | IXGBE_GSSR_EEP_SM;
 struct ixgbe_hic_read_shadow_ram buffer;
 u32 current_word = 0;
 u16 words_to_read;
 s32 status;
 u32 i;

 DEBUGFUNC("ixgbe_read_ee_hostif_buffer_X550");


 status = hw->mac.ops.acquire_swfw_sync(hw, mask);
 if (status) {
  DEBUGOUT("EEPROM read buffer - semaphore failed\n");
  return status;
 }

 while (words) {
  if (words > FW_MAX_READ_BUFFER_SIZE / 2)
   words_to_read = FW_MAX_READ_BUFFER_SIZE / 2;
  else
   words_to_read = words;

  buffer.hdr.req.cmd = FW_READ_SHADOW_RAM_CMD;
  buffer.hdr.req.buf_lenh = 0;
  buffer.hdr.req.buf_lenl = FW_READ_SHADOW_RAM_LEN;
  buffer.hdr.req.checksum = FW_DEFAULT_CHECKSUM;


  buffer.address = IXGBE_CPU_TO_BE32((offset + current_word) * 2);
  buffer.length = IXGBE_CPU_TO_BE16(words_to_read * 2);
  buffer.pad2 = 0;
  buffer.pad3 = 0;

  status = ixgbe_hic_unlocked(hw, (u32 *)&buffer, sizeof(buffer),
         IXGBE_HI_COMMAND_TIMEOUT);

  if (status) {
   DEBUGOUT("Host interface command failed\n");
   goto out;
  }

  for (i = 0; i < words_to_read; i++) {
   u32 reg = IXGBE_FLEX_MNG + (FW_NVM_DATA_OFFSET << 2) +
      2 * i;
   u32 value = IXGBE_READ_REG(hw, reg);

   data[current_word] = (u16)(value & 0xffff);
   current_word++;
   i++;
   if (i < words_to_read) {
    value >>= 16;
    data[current_word] = (u16)(value & 0xffff);
    current_word++;
   }
  }
  words -= words_to_read;
 }

out:
 hw->mac.ops.release_swfw_sync(hw, mask);
 return status;
}
