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
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 

void FUNC4(struct bwn_mac *mac)
{
	if (mac->mac_phy.rev >= 16)
		FUNC1(mac);
	else if (mac->mac_phy.rev >= 7)
		FUNC3(mac);
	else if (mac->mac_phy.rev >= 3)
		FUNC2(mac);
	else
		FUNC0(mac);
}