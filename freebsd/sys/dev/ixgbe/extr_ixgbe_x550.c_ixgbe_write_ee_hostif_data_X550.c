
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_3__ {int checksum; int buf_lenl; scalar_t__ buf_lenh; int cmd; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct ixgbe_hic_write_shadow_ram {int data; int address; int length; TYPE_2__ hdr; } ;
typedef int s32 ;
typedef int buffer ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int FW_DEFAULT_CHECKSUM ;
 int FW_WRITE_SHADOW_RAM_CMD ;
 int FW_WRITE_SHADOW_RAM_LEN ;
 int IXGBE_CPU_TO_BE16 (int) ;
 int IXGBE_CPU_TO_BE32 (int) ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 int ixgbe_host_interface_command (struct ixgbe_hw*,int *,int,int ,int ) ;

s32 ixgbe_write_ee_hostif_data_X550(struct ixgbe_hw *hw, u16 offset,
        u16 data)
{
 s32 status;
 struct ixgbe_hic_write_shadow_ram buffer;

 DEBUGFUNC("ixgbe_write_ee_hostif_data_X550");

 buffer.hdr.req.cmd = FW_WRITE_SHADOW_RAM_CMD;
 buffer.hdr.req.buf_lenh = 0;
 buffer.hdr.req.buf_lenl = FW_WRITE_SHADOW_RAM_LEN;
 buffer.hdr.req.checksum = FW_DEFAULT_CHECKSUM;


 buffer.length = IXGBE_CPU_TO_BE16(sizeof(u16));
 buffer.data = data;
 buffer.address = IXGBE_CPU_TO_BE32(offset * 2);

 status = ixgbe_host_interface_command(hw, (u32 *)&buffer,
           sizeof(buffer),
           IXGBE_HI_COMMAND_TIMEOUT, FALSE);

 return status;
}
