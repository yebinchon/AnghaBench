#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_host_mng_command_header {int /*<<< orphan*/  checksum; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_HOST_IF ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

s32 FUNC4(struct e1000_hw *hw,
				      struct e1000_host_mng_command_header *hdr)
{
	u16 i, length = sizeof(struct e1000_host_mng_command_header);

	FUNC0("e1000_mng_write_cmd_header_generic");

	/* Write the whole command header structure with new checksum. */

	hdr->checksum = FUNC3((u8 *)hdr, length);

	length >>= 2;
	/* Write the relevant command block into the ram area. */
	for (i = 0; i < length; i++) {
		FUNC2(hw, E1000_HOST_IF, i,
					    *((u32 *) hdr + i));
		FUNC1(hw);
	}

	return E1000_SUCCESS;
}