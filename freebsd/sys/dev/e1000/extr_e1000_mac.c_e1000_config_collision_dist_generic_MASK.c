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
 int E1000_COLD_SHIFT ; 
 int E1000_COLLISION_DISTANCE ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_COLD ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 tctl;

	FUNC0("e1000_config_collision_dist_generic");

	tctl = FUNC1(hw, E1000_TCTL);

	tctl &= ~E1000_TCTL_COLD;
	tctl |= E1000_COLLISION_DISTANCE << E1000_COLD_SHIFT;

	FUNC3(hw, E1000_TCTL, tctl);
	FUNC2(hw);
}