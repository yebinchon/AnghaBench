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
typedef  int uint16_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_RFCTL ; 
 int /*<<< orphan*/  BWN_RFDATALO ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

uint16_t
FUNC3(struct bwn_mac *mac, uint16_t reg)
{

	FUNC2(reg != 1, ("unaccessible register %d", reg));
	if (mac->mac_phy.rev < 2 && reg != 0x4001)
		reg |= 0x100;
	if (mac->mac_phy.rev >= 2)
		reg |= 0x200;
	FUNC1(mac, BWN_RFCTL, reg);
	return FUNC0(mac, BWN_RFDATALO);
}