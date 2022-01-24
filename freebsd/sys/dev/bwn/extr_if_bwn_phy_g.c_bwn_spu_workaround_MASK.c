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
typedef  int uint8_t ;
struct TYPE_2__ {int rf_ver; int rf_rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac, uint8_t channel)
{

	if (mac->mac_phy.rf_ver != 0x2050 || mac->mac_phy.rf_rev >= 6)
		return;
	FUNC0(mac, BWN_CHANNEL, (channel <= 10) ?
	    FUNC2(channel + 4) : FUNC2(1));
	FUNC1(1000);
	FUNC0(mac, BWN_CHANNEL, FUNC2(channel));
}