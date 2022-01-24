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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ center_freq; scalar_t__ channel_type; } ;
struct bwn_phy_n {scalar_t__* txiqlocal_bestc; TYPE_2__ txiqlocal_chanspec; int /*<<< orphan*/  txiqlocal_coeffsvalid; } ;
struct TYPE_3__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 scalar_t__ FUNC2 (struct bwn_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC5(struct bwn_mac *mac)
{
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	uint8_t i;
	uint16_t buffer[7];
	bool equal = true;

	if (!nphy->txiqlocal_coeffsvalid ||
	    nphy->txiqlocal_chanspec.center_freq != FUNC1(mac) ||
	    nphy->txiqlocal_chanspec.channel_type != FUNC2(mac, NULL))
		return;

	FUNC3(mac, FUNC0(15, 80), 7, buffer);
	for (i = 0; i < 4; i++) {
		if (buffer[i] != nphy->txiqlocal_bestc[i]) {
			equal = false;
			break;
		}
	}

	if (!equal) {
		FUNC4(mac, FUNC0(15, 80), 4,
					nphy->txiqlocal_bestc);
		for (i = 0; i < 4; i++)
			buffer[i] = 0;
		FUNC4(mac, FUNC0(15, 88), 4,
					buffer);
		FUNC4(mac, FUNC0(15, 85), 2,
					&nphy->txiqlocal_bestc[5]);
		FUNC4(mac, FUNC0(15, 93), 2,
					&nphy->txiqlocal_bestc[5]);
	}
}