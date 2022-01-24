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
struct TYPE_3__ {int tfd_queue_msk; int /*<<< orphan*/  sta_id; } ;
struct iwm_softc {TYPE_1__ sc_aux_sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_AUX_STA_ID ; 
 int /*<<< orphan*/  IWM_MAC_INDEX_AUX ; 
 int IWM_MVM_AUX_QUEUE ; 
 int /*<<< orphan*/  IWM_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWM_MVM_TX_FIFO_MCAST ; 
 int FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwm_softc*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct iwm_softc *sc)
{
	int ret;

	sc->sc_aux_sta.sta_id = IWM_AUX_STA_ID;
	sc->sc_aux_sta.tfd_queue_msk = (1 << IWM_MVM_AUX_QUEUE);

	/* Map Aux queue to fifo - needs to happen before adding Aux station */
	ret = FUNC0(sc, IWM_AUX_STA_ID, IWM_MVM_AUX_QUEUE,
	    IWM_MVM_TX_FIFO_MCAST);
	if (ret)
		return ret;

	ret = FUNC1(sc, &sc->sc_aux_sta, NULL,
					 IWM_MAC_INDEX_AUX, 0);

	if (ret) {
		FUNC2(&sc->sc_aux_sta, 0, sizeof(sc->sc_aux_sta));
		sc->sc_aux_sta.sta_id = IWM_MVM_STATION_COUNT;
	}
	return ret;
}