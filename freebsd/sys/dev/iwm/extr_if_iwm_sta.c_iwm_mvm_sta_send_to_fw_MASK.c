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
typedef  int uint32_t ;
struct iwm_vap {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_vap; } ;
struct iwm_node {TYPE_1__ in_ni; } ;
struct iwm_mvm_add_sta_cmd {int add_modify; int /*<<< orphan*/  station_flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  tfd_queue_msk; int /*<<< orphan*/  tid_disable_tx; int /*<<< orphan*/  station_flags_msk; int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  sta_id; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_ADD_STA ; 
 int IWM_ADD_STA_STATUS_MASK ; 
#define  IWM_ADD_STA_SUCCESS 128 
 int /*<<< orphan*/  IWM_DEBUG_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_STATION_ID ; 
 int IWM_STA_FLG_AGG_MPDU_DENS_SHIFT ; 
 int IWM_STA_FLG_FAT_EN_MSK ; 
 int IWM_STA_FLG_MAX_AGG_SIZE_SHIFT ; 
 int IWM_STA_FLG_MIMO_EN_MSK ; 
 struct iwm_vap* FUNC3 (int /*<<< orphan*/ ) ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int* iwm_mvm_ac_to_tx_fifo ; 
 int /*<<< orphan*/  FUNC7 (struct iwm_softc*) ; 
 int FUNC8 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwm_mvm_add_sta_cmd*,int*) ; 

int
FUNC9(struct iwm_softc *sc, struct iwm_node *in,
	boolean_t update)
{
	struct iwm_vap *ivp = FUNC3(in->in_ni.ni_vap);
	struct iwm_mvm_add_sta_cmd add_sta_cmd = {
		.sta_id = IWM_STATION_ID,
		.mac_id_n_color =
		    FUNC6(FUNC2(ivp->id, ivp->color)),
		.add_modify = update ? 1 : 0,
		.station_flags_msk = FUNC6(IWM_STA_FLG_FAT_EN_MSK |
					     IWM_STA_FLG_MIMO_EN_MSK),
		.tid_disable_tx = FUNC5(0xffff),
	};
	int ret;
	uint32_t status;
	uint32_t agg_size = 0, mpdu_dens = 0;

	if (!update) {
		int ac;
		for (ac = 0; ac < WME_NUM_AC; ac++) {
			add_sta_cmd.tfd_queue_msk |=
			    FUNC6(1 << iwm_mvm_ac_to_tx_fifo[ac]);
		}
		FUNC0(&add_sta_cmd.addr, in->in_ni.ni_bssid);
	}

	add_sta_cmd.station_flags |=
		FUNC6(agg_size << IWM_STA_FLG_MAX_AGG_SIZE_SHIFT);
	add_sta_cmd.station_flags |=
		FUNC6(mpdu_dens << IWM_STA_FLG_AGG_MPDU_DENS_SHIFT);

	status = IWM_ADD_STA_SUCCESS;
	ret = FUNC8(sc, IWM_ADD_STA,
					  FUNC7(sc),
					  &add_sta_cmd, &status);
	if (ret)
		return ret;

	switch (status & IWM_ADD_STA_STATUS_MASK) {
	case IWM_ADD_STA_SUCCESS:
		FUNC1(sc, IWM_DEBUG_NODE, "IWM_ADD_STA PASSED\n");
		break;
	default:
		ret = EIO;
		FUNC4(sc->sc_dev, "IWM_ADD_STA failed\n");
		break;
	}

	return ret;
}