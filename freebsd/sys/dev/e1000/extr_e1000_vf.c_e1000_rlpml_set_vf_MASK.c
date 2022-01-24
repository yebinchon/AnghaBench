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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_VF_SET_LPE ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct e1000_hw *hw, u16 max_size)
{
	u32 msgbuf[2];

	msgbuf[0] = E1000_VF_SET_LPE;
	msgbuf[1] = max_size;

	FUNC0(hw, msgbuf, 2);
}