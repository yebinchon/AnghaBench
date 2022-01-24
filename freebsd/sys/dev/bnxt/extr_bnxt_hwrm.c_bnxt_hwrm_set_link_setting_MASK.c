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
struct hwrm_port_phy_cfg_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {scalar_t__ autoneg; } ;
struct TYPE_4__ {TYPE_1__ flow_ctrl; } ;
struct bnxt_softc {int flags; TYPE_2__ link_info; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_FLAG_NPAR ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_CFG ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt_softc*) ; 

int
FUNC8(struct bnxt_softc *softc, bool set_pause,
    bool set_eee, bool set_link)
{
	struct hwrm_port_phy_cfg_input req = {0};
	int rc;

	if (softc->flags & BNXT_FLAG_NPAR)
		return ENOTSUP;

	FUNC3(softc, &req, HWRM_PORT_PHY_CFG);
	
	if (set_pause) {
		FUNC6(softc, &req);

		if (softc->link_info.flow_ctrl.autoneg)
			set_link = true;
	}

	if (set_link)
		FUNC5(softc, &req);
	
	if (set_eee)
		FUNC4(softc, &req);
	
	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));

	if (!rc) {
		if (set_pause) {
			/* since changing of 'force pause' setting doesn't 
			 * trigger any link change event, the driver needs to
			 * update the current pause result upon successfully i
			 * return of the phy_cfg command */
			if (!softc->link_info.flow_ctrl.autoneg) 
				FUNC7(softc);
		}
	}
	FUNC1(softc);
	return rc;
}