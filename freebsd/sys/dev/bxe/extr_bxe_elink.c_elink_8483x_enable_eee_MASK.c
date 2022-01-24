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
typedef  int uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  scalar_t__ elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 scalar_t__ ELINK_STATUS_OK ; 
 int /*<<< orphan*/  PHY84833_MB_PROCESS1 ; 
 int /*<<< orphan*/  PHY848xx_CMD_SET_EEE_MODE ; 
 int /*<<< orphan*/  SHMEM_EEE_10G_ADV ; 
 scalar_t__ FUNC1 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct elink_phy*,struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static elink_status_t FUNC3(struct elink_phy *phy,
				   struct elink_params *params,
				   struct elink_vars *vars)
{
	elink_status_t rc;
	struct bxe_softc *sc = params->sc;
	uint16_t cmd_args = 1;

	rc = FUNC1(phy, params, PHY848xx_CMD_SET_EEE_MODE,
				  &cmd_args, 1, PHY84833_MB_PROCESS1);
	if (rc != ELINK_STATUS_OK) {
		FUNC0(sc, "EEE enable failed.\n");
		return rc;
	}

	return FUNC2(phy, params, vars, SHMEM_EEE_10G_ADV);
}