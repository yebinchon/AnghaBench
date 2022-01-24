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
typedef  int u8 ;
typedef  int u64 ;
struct ixgbe_hw_stats {int* qbtc; int* qbrc; int /*<<< orphan*/ * qprdc; int /*<<< orphan*/ * qprc; int /*<<< orphan*/ * qptc; } ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  IXGBE_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 

s32 FUNC9(struct ixgbe_hw *hw,
				 struct ixgbe_hw_stats *stats,
				 u8 tc_count)
{
	int tc;

	FUNC0("dcb_get_tc_stats");

	if (tc_count > IXGBE_DCB_MAX_TRAFFIC_CLASS)
		return IXGBE_ERR_PARAM;

	/* Statistics pertaining to each traffic class */
	for (tc = 0; tc < tc_count; tc++) {
		/* Transmitted Packets */
		stats->qptc[tc] += FUNC8(hw, FUNC7(tc));
		/* Transmitted Bytes (read low first to prevent missed carry) */
		stats->qbtc[tc] += FUNC8(hw, FUNC4(tc));
		stats->qbtc[tc] +=
			(((u64)(FUNC8(hw, FUNC3(tc)))) << 32);
		/* Received Packets */
		stats->qprc[tc] += FUNC8(hw, FUNC5(tc));
		/* Received Bytes (read low first to prevent missed carry) */
		stats->qbrc[tc] += FUNC8(hw, FUNC2(tc));
		stats->qbrc[tc] +=
			(((u64)(FUNC8(hw, FUNC1(tc)))) << 32);

		/* Received Dropped Packet */
		stats->qprdc[tc] += FUNC8(hw, FUNC6(tc));
	}

	return IXGBE_SUCCESS;
}