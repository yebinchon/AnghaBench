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
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  IXGBE_ERROR_CAUTION ; 
 int /*<<< orphan*/  IXGBE_ERR_HOST_INTERFACE_COMMAND ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_FLEX_MNG ; 
 int /*<<< orphan*/  IXGBE_FWSTS ; 
 int IXGBE_FWSTS_FWRI ; 
 int /*<<< orphan*/  IXGBE_HICR ; 
 int IXGBE_HICR_C ; 
 int IXGBE_HICR_EN ; 
 int IXGBE_HICR_SV ; 
 int IXGBE_HI_MAX_BLOCK_BYTE_LENGTH ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

s32 FUNC9(struct ixgbe_hw *hw, u32 *buffer, u32 length,
		       u32 timeout)
{
	u32 hicr, i, fwsts;
	u16 dword_len;

	FUNC0("ixgbe_hic_unlocked");

	if (!length || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
		FUNC2("Buffer length failure buffersize=%d.\n", length);
		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
	}

	/* Set bit 9 of FWSTS clearing FW reset indication */
	fwsts = FUNC5(hw, IXGBE_FWSTS);
	FUNC6(hw, IXGBE_FWSTS, fwsts | IXGBE_FWSTS_FWRI);

	/* Check that the host interface is enabled. */
	hicr = FUNC5(hw, IXGBE_HICR);
	if (!(hicr & IXGBE_HICR_EN)) {
		FUNC1("IXGBE_HOST_EN bit disabled.\n");
		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
	}

	/* Calculate length in DWORDs. We must be DWORD aligned */
	if (length % sizeof(u32)) {
		FUNC1("Buffer length failure, not aligned to dword");
		return IXGBE_ERR_INVALID_ARGUMENT;
	}

	dword_len = length >> 2;

	/* The device driver writes the relevant command block
	 * into the ram area.
	 */
	for (i = 0; i < dword_len; i++)
		FUNC7(hw, IXGBE_FLEX_MNG,
				      i, FUNC4(buffer[i]));

	/* Setting this bit tells the ARC that a new command is pending. */
	FUNC6(hw, IXGBE_HICR, hicr | IXGBE_HICR_C);

	for (i = 0; i < timeout; i++) {
		hicr = FUNC5(hw, IXGBE_HICR);
		if (!(hicr & IXGBE_HICR_C))
			break;
		FUNC8(1);
	}

	/* Check command completion */
	if ((timeout && i == timeout) ||
	    !(FUNC5(hw, IXGBE_HICR) & IXGBE_HICR_SV)) {
		FUNC3(IXGBE_ERROR_CAUTION,
			     "Command has failed with no status valid.\n");
		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
	}

	return IXGBE_SUCCESS;
}