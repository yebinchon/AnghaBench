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
struct e1000_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int*) ; 

__attribute__((used)) static s32 FUNC2(struct e1000_hw *hw, u8 *data)
{
	s32 i;
	bool bit = 0;

	FUNC0("e1000_clock_in_i2c_byte");

	*data = 0;
	for (i = 7; i >= 0; i--) {
		FUNC1(hw, &bit);
		*data |= bit << i;
	}

	return E1000_SUCCESS;
}