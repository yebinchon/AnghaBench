#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ixgbevf_hw_stats {int /*<<< orphan*/  vfmprc; int /*<<< orphan*/  vfgotc; int /*<<< orphan*/  vfgorc; int /*<<< orphan*/  vfgptc; int /*<<< orphan*/  vfgprc; int /*<<< orphan*/  last_vfmprc; int /*<<< orphan*/  last_vfgotc; int /*<<< orphan*/  last_vfgorc; int /*<<< orphan*/  last_vfgptc; int /*<<< orphan*/  last_vfgprc; } ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_2__ {struct ixgbevf_hw_stats vf; } ;
struct adapter {TYPE_1__ stats; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VFGORC_LSB ; 
 int /*<<< orphan*/  IXGBE_VFGORC_MSB ; 
 int /*<<< orphan*/  IXGBE_VFGOTC_LSB ; 
 int /*<<< orphan*/  IXGBE_VFGOTC_MSB ; 
 int /*<<< orphan*/  IXGBE_VFGPRC ; 
 int /*<<< orphan*/  IXGBE_VFGPTC ; 
 int /*<<< orphan*/  IXGBE_VFMPRC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbevf_hw_stats *stats = &adapter->stats.vf;

	FUNC5(IXGBE_VFGPRC, adapter->stats.vf.last_vfgprc,
	    adapter->stats.vf.vfgprc);
	FUNC5(IXGBE_VFGPTC, adapter->stats.vf.last_vfgptc,
	    adapter->stats.vf.vfgptc);
	FUNC6(IXGBE_VFGORC_LSB, IXGBE_VFGORC_MSB,
	    adapter->stats.vf.last_vfgorc, adapter->stats.vf.vfgorc);
	FUNC6(IXGBE_VFGOTC_LSB, IXGBE_VFGOTC_MSB,
	    adapter->stats.vf.last_vfgotc, adapter->stats.vf.vfgotc);
	FUNC5(IXGBE_VFMPRC, adapter->stats.vf.last_vfmprc,
	    adapter->stats.vf.vfmprc);

	/* Fill out the OS statistics structure */
	FUNC2(adapter, stats->vfgprc);
	FUNC4(adapter, stats->vfgptc);
	FUNC0(adapter, stats->vfgorc);
	FUNC3(adapter, stats->vfgotc);
	FUNC1(adapter, stats->vfmprc);
}