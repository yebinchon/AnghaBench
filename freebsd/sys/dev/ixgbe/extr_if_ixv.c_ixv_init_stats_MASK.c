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
typedef  int u64 ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_3__ {int last_vfgorc; int last_vfgotc; int base_vfgorc; int base_vfgotc; void* last_vfmprc; void* base_vfmprc; void* last_vfgptc; void* base_vfgptc; void* last_vfgprc; void* base_vfgprc; } ;
struct TYPE_4__ {TYPE_1__ vf; } ;
struct adapter {TYPE_2__ stats; struct ixgbe_hw hw; } ;

/* Variables and functions */
 void* FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VFGORC_LSB ; 
 int /*<<< orphan*/  IXGBE_VFGORC_MSB ; 
 int /*<<< orphan*/  IXGBE_VFGOTC_LSB ; 
 int /*<<< orphan*/  IXGBE_VFGOTC_MSB ; 
 int /*<<< orphan*/  IXGBE_VFGPRC ; 
 int /*<<< orphan*/  IXGBE_VFGPTC ; 
 int /*<<< orphan*/  IXGBE_VFMPRC ; 

__attribute__((used)) static void
FUNC1(struct adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;

	adapter->stats.vf.last_vfgprc = FUNC0(hw, IXGBE_VFGPRC);
	adapter->stats.vf.last_vfgorc = FUNC0(hw, IXGBE_VFGORC_LSB);
	adapter->stats.vf.last_vfgorc |=
	    (((u64)(FUNC0(hw, IXGBE_VFGORC_MSB))) << 32);

	adapter->stats.vf.last_vfgptc = FUNC0(hw, IXGBE_VFGPTC);
	adapter->stats.vf.last_vfgotc = FUNC0(hw, IXGBE_VFGOTC_LSB);
	adapter->stats.vf.last_vfgotc |=
	    (((u64)(FUNC0(hw, IXGBE_VFGOTC_MSB))) << 32);

	adapter->stats.vf.last_vfmprc = FUNC0(hw, IXGBE_VFMPRC);

	adapter->stats.vf.base_vfgprc = adapter->stats.vf.last_vfgprc;
	adapter->stats.vf.base_vfgorc = adapter->stats.vf.last_vfgorc;
	adapter->stats.vf.base_vfgptc = adapter->stats.vf.last_vfgptc;
	adapter->stats.vf.base_vfgotc = adapter->stats.vf.last_vfgotc;
	adapter->stats.vf.base_vfmprc = adapter->stats.vf.last_vfmprc;
}