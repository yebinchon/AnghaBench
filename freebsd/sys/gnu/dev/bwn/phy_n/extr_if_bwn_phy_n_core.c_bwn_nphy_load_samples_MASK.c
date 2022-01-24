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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_phy_n {scalar_t__ hang_avoid; } ;
struct TYPE_2__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {int /*<<< orphan*/  mac_sc; TYPE_1__ mac_phy; } ;
struct bwn_c32 {int i; int q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct bwn_mac *mac,
					struct bwn_c32 *samples, uint16_t len) {
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	uint16_t i;
	uint32_t *data;

	data = FUNC5(len * sizeof(uint32_t), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!data) {
		FUNC0(mac->mac_sc, "allocation for samples loading failed\n");
		return -ENOMEM;
	}
	if (nphy->hang_avoid)
		FUNC2(mac, 1);

	for (i = 0; i < len; i++) {
		data[i] = (samples[i].i & 0x3FF << 10);
		data[i] |= samples[i].q & 0x3FF;
	}
	FUNC3(mac, FUNC1(17, 0), len, data);

	FUNC4(data, M_DEVBUF);
	if (nphy->hang_avoid)
		FUNC2(mac, 0);
	return 0;
}