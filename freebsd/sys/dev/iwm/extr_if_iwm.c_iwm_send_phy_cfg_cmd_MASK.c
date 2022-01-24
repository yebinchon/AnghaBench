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
struct iwm_softc {int cur_ucode; TYPE_1__* sc_default_calib; } ;
struct TYPE_4__ {int /*<<< orphan*/  flow_trigger; int /*<<< orphan*/  event_trigger; } ;
struct iwm_phy_cfg_cmd {int /*<<< orphan*/  phy_cfg; TYPE_2__ calib_control; } ;
typedef  int /*<<< orphan*/  phy_cfg_cmd ;
typedef  enum iwm_ucode_type { ____Placeholder_iwm_ucode_type } iwm_ucode_type ;
struct TYPE_3__ {int /*<<< orphan*/  flow_trigger; int /*<<< orphan*/  event_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_CMD_SYNC ; 
 int IWM_DEBUG_CMD ; 
 int IWM_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_PHY_CONFIGURATION_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_phy_cfg_cmd*) ; 

__attribute__((used)) static int
FUNC4(struct iwm_softc *sc)
{
	struct iwm_phy_cfg_cmd phy_cfg_cmd;
	enum iwm_ucode_type ucode_type = sc->cur_ucode;

	/* Set parameters */
	phy_cfg_cmd.phy_cfg = FUNC1(FUNC2(sc));
	phy_cfg_cmd.calib_control.event_trigger =
	    sc->sc_default_calib[ucode_type].event_trigger;
	phy_cfg_cmd.calib_control.flow_trigger =
	    sc->sc_default_calib[ucode_type].flow_trigger;

	FUNC0(sc, IWM_DEBUG_CMD | IWM_DEBUG_RESET,
	    "Sending Phy CFG command: 0x%x\n", phy_cfg_cmd.phy_cfg);
	return FUNC3(sc, IWM_PHY_CONFIGURATION_CMD, IWM_CMD_SYNC,
	    sizeof(phy_cfg_cmd), &phy_cfg_cmd);
}