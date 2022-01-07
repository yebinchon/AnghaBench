
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct TYPE_4__ {scalar_t__ ret_status; } ;
struct ixgbe_hic_hdr {int cmd; int buf_len; TYPE_1__ cmd_or_resp; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 scalar_t__ IXGBE_ERR_HOST_INTERFACE_COMMAND ;
 int IXGBE_FLEX_MNG ;
 int IXGBE_GSSR_SW_MNG_SM ;
 int IXGBE_HI_MAX_BLOCK_BYTE_LENGTH ;
 int IXGBE_LE32_TO_CPUS (int*) ;
 int IXGBE_READ_REG_ARRAY (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_hic_unlocked (struct ixgbe_hw*,int*,int,int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, u32 *buffer,
     u32 length, u32 timeout, bool return_data)
{
 u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
 struct ixgbe_hic_hdr *resp = (struct ixgbe_hic_hdr *)buffer;
 u16 buf_len;
 s32 status;
 u32 bi;
 u32 dword_len;

 DEBUGFUNC("ixgbe_host_interface_command");

 if (length == 0 || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
  DEBUGOUT1("Buffer length failure buffersize=%d.\n", length);
  return IXGBE_ERR_HOST_INTERFACE_COMMAND;
 }


 status = hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_SW_MNG_SM);
 if (status)
  return status;

 status = ixgbe_hic_unlocked(hw, buffer, length, timeout);
 if (status)
  goto rel_out;

 if (!return_data)
  goto rel_out;


 dword_len = hdr_size >> 2;


 for (bi = 0; bi < dword_len; bi++) {
  buffer[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
  IXGBE_LE32_TO_CPUS(&buffer[bi]);
 }






 if (resp->cmd == 0x30) {
  for (; bi < dword_len + 2; bi++) {
   buffer[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG,
         bi);
   IXGBE_LE32_TO_CPUS(&buffer[bi]);
  }
  buf_len = (((u16)(resp->cmd_or_resp.ret_status) << 3)
      & 0xF00) | resp->buf_len;
  hdr_size += (2 << 2);
 } else {
  buf_len = resp->buf_len;
 }
 if (!buf_len)
  goto rel_out;

 if (length < buf_len + hdr_size) {
  DEBUGOUT("Buffer not large enough for reply message.\n");
  status = IXGBE_ERR_HOST_INTERFACE_COMMAND;
  goto rel_out;
 }


 dword_len = (buf_len + 3) >> 2;


 for (; bi <= dword_len; bi++) {
  buffer[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
  IXGBE_LE32_TO_CPUS(&buffer[bi]);
 }

rel_out:
 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_SW_MNG_SM);

 return status;
}
