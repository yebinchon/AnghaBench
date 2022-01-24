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
struct bwn_rfatt {int dummy; } ;
struct bwn_phy_g {int /*<<< orphan*/  pg_bbatt; int /*<<< orphan*/  pg_rfatt; } ;
struct TYPE_2__ {struct bwn_phy_g phy_g; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
struct bwn_lo_calib {int /*<<< orphan*/  ctl; } ;
typedef  int /*<<< orphan*/  rf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_rfatt*) ; 
 struct bwn_lo_calib* FUNC1 (struct bwn_mac*,int /*<<< orphan*/ *,struct bwn_rfatt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_rfatt*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct bwn_mac *mac)
{
	struct bwn_phy_g *pg = &mac->mac_phy.phy_g;
	struct bwn_lo_calib *cal;
	struct bwn_rfatt rf;

	FUNC3(&rf, &pg->pg_rfatt, sizeof(rf));
	FUNC0(&rf);

	cal = FUNC1(mac, &pg->pg_bbatt, &rf);
	if (!cal)
		return;
	FUNC2(mac, &cal->ctl);
}