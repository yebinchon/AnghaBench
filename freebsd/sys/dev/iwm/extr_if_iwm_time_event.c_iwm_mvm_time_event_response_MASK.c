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
struct iwm_time_event_resp {int /*<<< orphan*/  unique_id; int /*<<< orphan*/  id; } ;
struct iwm_softc {scalar_t__ sc_time_event_uid; } ;
struct TYPE_2__ {scalar_t__ code; } ;
struct iwm_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_DEBUG_TE ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ IWM_TE_BSS_STA_AGGRESSIVE_ASSOC ; 
 scalar_t__ IWM_TIME_EVENT_CMD ; 
 int FUNC1 (struct iwm_rx_packet*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct iwm_softc *sc, struct iwm_rx_packet *pkt,
    void *data)
{
	struct iwm_time_event_resp *resp;
	int resp_len = FUNC1(pkt);

	if (pkt->hdr.code != IWM_TIME_EVENT_CMD ||
	    resp_len != sizeof(*resp)) {
		FUNC0(sc, IWM_DEBUG_TE,
		    "Invalid TIME_EVENT_CMD response\n");
		return 1;
	}

	resp = (void *)pkt->data;

	/* we should never get a response to another TIME_EVENT_CMD here */
	if (FUNC2(resp->id) != IWM_TE_BSS_STA_AGGRESSIVE_ASSOC) {
		FUNC0(sc, IWM_DEBUG_TE,
		    "Got TIME_EVENT_CMD response with wrong id: %d\n",
		    FUNC2(resp->id));
		return 0;
	}

	sc->sc_time_event_uid = FUNC2(resp->unique_id);
	FUNC0(sc, IWM_DEBUG_TE,
	    "TIME_EVENT_CMD response - UID = 0x%x\n", sc->sc_time_event_uid);
	return 1;
}