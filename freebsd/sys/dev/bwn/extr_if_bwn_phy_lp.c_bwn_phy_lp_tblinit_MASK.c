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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bwn_mac *mac)
{
	uint32_t freq = FUNC5(FUNC0(mac), 0);

	if (mac->mac_phy.rev < 2) {
		FUNC2(mac);
		FUNC4(mac);
		FUNC1(mac, freq);
		return;
	}

	FUNC3(mac);
	FUNC4(mac);
}