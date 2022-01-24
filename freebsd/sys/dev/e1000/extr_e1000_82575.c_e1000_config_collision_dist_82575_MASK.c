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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int E1000_COLLISION_DISTANCE ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_TCTL_EXT ; 
 int E1000_TCTL_EXT_COLD ; 
 int E1000_TCTL_EXT_COLD_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 tctl_ext;

	FUNC0("e1000_config_collision_dist_82575");

	tctl_ext = FUNC1(hw, E1000_TCTL_EXT);

	tctl_ext &= ~E1000_TCTL_EXT_COLD;
	tctl_ext |= E1000_COLLISION_DISTANCE << E1000_TCTL_EXT_COLD_SHIFT;

	FUNC3(hw, E1000_TCTL_EXT, tctl_ext);
	FUNC2(hw);
}