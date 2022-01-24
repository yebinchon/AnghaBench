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
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_MDC ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct e1000_hw *hw, u32 *ctrl)
{
	/*
	 * Raise the clock input to the Management Data Clock (by setting the
	 * MDC bit), and then delay a sufficient amount of time.
	 */
	FUNC1(hw, E1000_CTRL, (*ctrl | E1000_CTRL_MDC));
	FUNC0(hw);
	FUNC2(10);
}