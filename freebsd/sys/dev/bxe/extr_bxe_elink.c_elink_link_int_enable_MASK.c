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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct elink_params {int port; scalar_t__ switch_cfg; TYPE_1__* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int,int,int) ; 
 size_t ELINK_INT_PHY ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ; 
 int ELINK_NIG_MASK_XGXS0_LINK10G ; 
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*) ; 
 scalar_t__ ELINK_SWITCH_CFG_10G ; 
 scalar_t__ NIG_REG_EMAC0_STATUS_MISC_MI_INT ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 scalar_t__ NIG_REG_SERDES0_STATUS_LINK_STATUS ; 
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ; 
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK10G ; 
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK_STATUS ; 
 scalar_t__ PORT_HW_CFG_SERDES_EXT_PHY_TYPE_NOT_CONN ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE ; 
 int FUNC5 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(struct elink_params *params)
{
	uint8_t port = params->port;
	uint32_t mask;
	struct bxe_softc *sc = params->sc;

	/* Setting the status to report on link up for either XGXS or SerDes */
	if (FUNC0(sc)) {
		mask = ELINK_NIG_MASK_XGXS0_LINK_STATUS;
		if (!(FUNC4(params)))
			mask |= ELINK_NIG_MASK_MI_INT;
	} else if (params->switch_cfg == ELINK_SWITCH_CFG_10G) {
		mask = (ELINK_NIG_MASK_XGXS0_LINK10G |
			ELINK_NIG_MASK_XGXS0_LINK_STATUS);
		FUNC1(sc, "enabled XGXS interrupt\n");
		if (!(FUNC4(params)) &&
			params->phy[ELINK_INT_PHY].type !=
				PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE) {
			mask |= ELINK_NIG_MASK_MI_INT;
			FUNC1(sc, "enabled external phy int\n");
		}

	} else { /* SerDes */
		mask = ELINK_NIG_MASK_SERDES0_LINK_STATUS;
		FUNC1(sc, "enabled SerDes interrupt\n");
		if (!(FUNC4(params)) &&
			params->phy[ELINK_INT_PHY].type !=
				PORT_HW_CFG_SERDES_EXT_PHY_TYPE_NOT_CONN) {
			mask |= ELINK_NIG_MASK_MI_INT;
			FUNC1(sc, "enabled external phy int\n");
		}
	}
	FUNC6(sc,
		      NIG_REG_MASK_INTERRUPT_PORT0 + port*4,
		      mask);

	FUNC3(sc, "port %x, is_xgxs %x, int_status 0x%x\n", port,
		 (params->switch_cfg == ELINK_SWITCH_CFG_10G),
		 FUNC5(sc, NIG_REG_STATUS_INTERRUPT_PORT0 + port*4));
	FUNC3(sc, " int_mask 0x%x, MI_INT %x, SERDES_LINK %x\n",
		 FUNC5(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4),
		 FUNC5(sc, NIG_REG_EMAC0_STATUS_MISC_MI_INT + port*0x18),
		 FUNC5(sc, NIG_REG_SERDES0_STATUS_LINK_STATUS+port*0x3c));
	FUNC2(sc, " 10G %x, XGXS_LINK %x\n",
	   FUNC5(sc, NIG_REG_XGXS0_STATUS_LINK10G + port*0x68),
	   FUNC5(sc, NIG_REG_XGXS0_STATUS_LINK_STATUS + port*0x68));
}