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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwm_softc {TYPE_1__* cfg; } ;
struct iwm_nvm_data {int /*<<< orphan*/  valid_rx_ant; int /*<<< orphan*/  valid_tx_ant; int /*<<< orphan*/  radio_cfg_pnum; int /*<<< orphan*/  radio_cfg_dash; int /*<<< orphan*/  radio_cfg_step; int /*<<< orphan*/  radio_cfg_type; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 scalar_t__ IWM_DEVICE_FAMILY_8000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const struct iwm_softc *sc, struct iwm_nvm_data *data,
		  uint32_t radio_cfg)
{
	if (sc->cfg->device_family < IWM_DEVICE_FAMILY_8000) {
		data->radio_cfg_type = FUNC8(radio_cfg);
		data->radio_cfg_step = FUNC5(radio_cfg);
		data->radio_cfg_dash = FUNC0(radio_cfg);
		data->radio_cfg_pnum = FUNC3(radio_cfg);
		return;
	}

	/* set the radio configuration for family 8000 */
	data->radio_cfg_type = FUNC9(radio_cfg);
	data->radio_cfg_step = FUNC6(radio_cfg);
	data->radio_cfg_dash = FUNC1(radio_cfg);
	data->radio_cfg_pnum = FUNC2(radio_cfg);
	data->valid_tx_ant = FUNC7(radio_cfg);
	data->valid_rx_ant = FUNC4(radio_cfg);
}