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
typedef  int /*<<< orphan*/  uint16_t ;
struct elink_phy {scalar_t__ media_type; } ;
struct elink_params {scalar_t__* req_line_speed; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 scalar_t__ ELINK_ETH_PHY_SFP_1G_FIBER ; 
 int /*<<< orphan*/  ELINK_INT_PHY ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 int /*<<< orphan*/  FUNC2 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct elink_phy*,struct elink_params*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct elink_phy *phy,
				      struct elink_params *params)
{
	uint16_t lane = FUNC2(phy, params);
	struct bxe_softc *sc = params->sc;
	FUNC3(phy, params, lane);
	if ((params->req_line_speed[FUNC1(ELINK_INT_PHY)] ==
	     ELINK_SPEED_10000) &&
	    (phy->media_type != ELINK_ETH_PHY_SFP_1G_FIBER)) {
		FUNC0(sc, "Setting 10G SFI\n");
		FUNC4(phy, params, 0);
	} else {
		FUNC0(sc, "Setting 1G Fiber\n");
		FUNC5(phy, params, 1, 0);
	}
}