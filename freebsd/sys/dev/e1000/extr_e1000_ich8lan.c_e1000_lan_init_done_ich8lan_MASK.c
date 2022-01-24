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
typedef  scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ E1000_ICH8_LAN_INIT_TIMEOUT ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 scalar_t__ E1000_STATUS_LAN_INIT_DONE ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct e1000_hw *hw)
{
	u32 data, loop = E1000_ICH8_LAN_INIT_TIMEOUT;

	FUNC0("e1000_lan_init_done_ich8lan");

	/* Wait for basic configuration completes before proceeding */
	do {
		data = FUNC2(hw, E1000_STATUS);
		data &= E1000_STATUS_LAN_INIT_DONE;
		FUNC4(100);
	} while ((!data) && --loop);

	/* If basic configuration is incomplete before the above loop
	 * count reaches 0, loading the configuration from NVM will
	 * leave the PHY in a bad state possibly resulting in no link.
	 */
	if (loop == 0)
		FUNC1("LAN_INIT_DONE not set, increase timeout\n");

	/* Clear the Init Done bit for the next init event */
	data = FUNC2(hw, E1000_STATUS);
	data &= ~E1000_STATUS_LAN_INIT_DONE;
	FUNC3(hw, E1000_STATUS, data);
}