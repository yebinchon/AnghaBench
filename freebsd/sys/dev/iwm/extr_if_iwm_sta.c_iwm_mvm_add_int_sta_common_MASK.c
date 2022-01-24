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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* cfg; } ;
struct iwm_mvm_add_sta_cmd {scalar_t__ sta_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  tid_disable_tx; void* tfd_queue_msk; int /*<<< orphan*/  station_type; void* mac_id_n_color; } ;
struct iwm_int_sta {scalar_t__ sta_id; int /*<<< orphan*/  tfd_queue_msk; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  IWM_ADD_STA ; 
 int IWM_ADD_STA_STATUS_MASK ; 
#define  IWM_ADD_STA_SUCCESS 128 
 scalar_t__ IWM_AUX_STA_ID ; 
 int /*<<< orphan*/  IWM_DEBUG_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_STA_AUX_ACTIVITY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwm_softc*) ; 
 int FUNC7 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwm_mvm_add_sta_cmd*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwm_mvm_add_sta_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct iwm_softc *sc, struct iwm_int_sta *sta,
    const uint8_t *addr, uint16_t mac_id, uint16_t color)
{
	struct iwm_mvm_add_sta_cmd cmd;
	int ret;
	uint32_t status;

	FUNC8(&cmd, 0, sizeof(cmd));
	cmd.sta_id = sta->sta_id;
	cmd.mac_id_n_color = FUNC5(FUNC2(mac_id, color));
	if (sta->sta_id == IWM_AUX_STA_ID && sc->cfg->mqrx_supported)
		cmd.station_type = IWM_STA_AUX_ACTIVITY;

	cmd.tfd_queue_msk = FUNC5(sta->tfd_queue_msk);
	cmd.tid_disable_tx = FUNC4(0xffff);

	if (addr)
		FUNC0(cmd.addr, addr);

	ret = FUNC7(sc, IWM_ADD_STA,
					  FUNC6(sc),
					  &cmd, &status);
	if (ret)
		return ret;

	switch (status & IWM_ADD_STA_STATUS_MASK) {
	case IWM_ADD_STA_SUCCESS:
		FUNC1(sc, IWM_DEBUG_NODE, "Internal station added.\n");
		return 0;
	default:
		ret = EIO;
		FUNC3(sc->sc_dev,
		    "Add internal station failed, status=0x%x\n", status);
		break;
	}
	return ret;
}