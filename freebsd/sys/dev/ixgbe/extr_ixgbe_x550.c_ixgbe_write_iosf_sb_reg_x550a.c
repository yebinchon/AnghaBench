
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int write_cmd ;
typedef int u32 ;
struct TYPE_4__ {int lan_id; } ;
struct ixgbe_hw {TYPE_2__ bus; } ;
struct TYPE_3__ {int checksum; int buf_len; int cmd; } ;
struct ixgbe_hic_internal_phy_req {int write_data; int address; int command_type; int port_number; TYPE_1__ hdr; } ;
typedef int s32 ;


 int FALSE ;
 int FW_DEFAULT_CHECKSUM ;
 int FW_INT_PHY_REQ_CMD ;
 int FW_INT_PHY_REQ_LEN ;
 int FW_INT_PHY_REQ_WRITE ;
 int IXGBE_CPU_TO_BE16 (int ) ;
 int IXGBE_CPU_TO_BE32 (int ) ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 int UNREFERENCED_1PARAMETER (int ) ;
 int ixgbe_host_interface_command (struct ixgbe_hw*,int *,int,int ,int ) ;
 int memset (struct ixgbe_hic_internal_phy_req*,int ,int) ;

s32 ixgbe_write_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
      u32 device_type, u32 data)
{
 struct ixgbe_hic_internal_phy_req write_cmd;
 s32 status;
 UNREFERENCED_1PARAMETER(device_type);

 memset(&write_cmd, 0, sizeof(write_cmd));
 write_cmd.hdr.cmd = FW_INT_PHY_REQ_CMD;
 write_cmd.hdr.buf_len = FW_INT_PHY_REQ_LEN;
 write_cmd.hdr.checksum = FW_DEFAULT_CHECKSUM;
 write_cmd.port_number = hw->bus.lan_id;
 write_cmd.command_type = FW_INT_PHY_REQ_WRITE;
 write_cmd.address = IXGBE_CPU_TO_BE16(reg_addr);
 write_cmd.write_data = IXGBE_CPU_TO_BE32(data);

 status = ixgbe_host_interface_command(hw, (u32 *)&write_cmd,
           sizeof(write_cmd),
           IXGBE_HI_COMMAND_TIMEOUT, FALSE);

 return status;
}
