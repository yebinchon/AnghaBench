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
typedef  int uint64_t ;
struct bwn_txpwr_loctl {int power_vector; int /*<<< orphan*/  pwr_vec_read_time; } ;
struct bwn_phy_g {struct bwn_txpwr_loctl pg_loctl; } ;
struct bwn_phy {struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_SHARED ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_txpwr_loctl *lo = &pg->pg_loctl;
	int i;
	uint64_t tmp;
	uint64_t power_vector = 0;

	for (i = 0; i < 8; i += 2) {
		tmp = FUNC1(mac, BWN_SHARED, 0x310 + i);
		power_vector |= (tmp << (i * 8));
		FUNC2(mac, BWN_SHARED, 0x310 + i, 0);
	}
	if (power_vector)
		lo->power_vector = power_vector;

	FUNC0(lo->pwr_vec_read_time);
}