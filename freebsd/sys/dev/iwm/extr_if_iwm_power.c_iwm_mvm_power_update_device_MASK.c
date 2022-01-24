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
struct iwm_softc {int /*<<< orphan*/  sc_ps_disabled; } ;
struct iwm_device_power_cmd {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int IWM_DEBUG_CMD ; 
 int IWM_DEBUG_PWRSAVE ; 
 int /*<<< orphan*/  IWM_DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWM_POWER_SCHEME_CAM ; 
 int /*<<< orphan*/  IWM_POWER_TABLE_CMD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_device_power_cmd*) ; 
 scalar_t__ iwm_power_scheme ; 

int
FUNC3(struct iwm_softc *sc)
{
	struct iwm_device_power_cmd cmd = {
		.flags = 0,
	};

	if (iwm_power_scheme == IWM_POWER_SCHEME_CAM)
		sc->sc_ps_disabled = TRUE;

	if (!sc->sc_ps_disabled)
		cmd.flags |= FUNC1(IWM_DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK);

	FUNC0(sc, IWM_DEBUG_PWRSAVE | IWM_DEBUG_CMD,
	    "Sending device power command with flags = 0x%X\n", cmd.flags);

	return FUNC2(sc,
	    IWM_POWER_TABLE_CMD, 0, sizeof(cmd), &cmd);
}