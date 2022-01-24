#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  write_cmd ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lan_id; } ;
struct ixgbe_hw {TYPE_2__ bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  cmd; } ;
struct ixgbe_hic_internal_phy_req {int /*<<< orphan*/  write_data; int /*<<< orphan*/  address; int /*<<< orphan*/  command_type; int /*<<< orphan*/  port_number; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FW_DEFAULT_CHECKSUM ; 
 int /*<<< orphan*/  FW_INT_PHY_REQ_CMD ; 
 int /*<<< orphan*/  FW_INT_PHY_REQ_LEN ; 
 int /*<<< orphan*/  FW_INT_PHY_REQ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_HI_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hic_internal_phy_req*,int /*<<< orphan*/ ,int) ; 

s32 FUNC5(struct ixgbe_hw *hw, u32 reg_addr,
				  u32 device_type, u32 data)
{
	struct ixgbe_hic_internal_phy_req write_cmd;
	s32 status;
	FUNC2(device_type);

	FUNC4(&write_cmd, 0, sizeof(write_cmd));
	write_cmd.hdr.cmd = FW_INT_PHY_REQ_CMD;
	write_cmd.hdr.buf_len = FW_INT_PHY_REQ_LEN;
	write_cmd.hdr.checksum = FW_DEFAULT_CHECKSUM;
	write_cmd.port_number = hw->bus.lan_id;
	write_cmd.command_type = FW_INT_PHY_REQ_WRITE;
	write_cmd.address = FUNC0(reg_addr);
	write_cmd.write_data = FUNC1(data);

	status = FUNC3(hw, (u32 *)&write_cmd,
					      sizeof(write_cmd),
					      IXGBE_HI_COMMAND_TIMEOUT, FALSE);

	return status;
}