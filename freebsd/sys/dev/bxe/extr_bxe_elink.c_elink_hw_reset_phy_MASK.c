#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct elink_params {int port; TYPE_1__* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hw_reset ) (TYPE_1__*,struct elink_params*) ;} ;

/* Variables and functions */
 size_t ELINK_INT_PHY ; 
 size_t ELINK_MAX_PHYS ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ; 
 int ELINK_NIG_MASK_XGXS0_LINK10G ; 
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct elink_params*,int /*<<< orphan*/ ) ; 
 TYPE_1__ phy_null ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct elink_params*) ; 

void FUNC3(struct elink_params *params)
{
	uint8_t phy_index;
	struct bxe_softc *sc = params->sc;
	FUNC1(params, 0);
	FUNC0(sc, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
		       (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
			ELINK_NIG_MASK_XGXS0_LINK10G |
			ELINK_NIG_MASK_SERDES0_LINK_STATUS |
			ELINK_NIG_MASK_MI_INT));

	for (phy_index = ELINK_INT_PHY; phy_index < ELINK_MAX_PHYS;
	      phy_index++) {
		if (params->phy[phy_index].hw_reset) {
			params->phy[phy_index].hw_reset(
				&params->phy[phy_index],
				params);
			params->phy[phy_index] = phy_null;
		}
	}
}