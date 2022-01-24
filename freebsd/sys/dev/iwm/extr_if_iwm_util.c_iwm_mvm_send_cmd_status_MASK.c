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
struct iwm_softc {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct iwm_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwm_host_cmd {int flags; struct iwm_rx_packet* resp_pkt; } ;
struct iwm_cmd_response {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int IWM_CMD_FAILED_MSK ; 
 int IWM_CMD_SYNC ; 
 int IWM_CMD_WANT_SKB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,struct iwm_host_cmd*) ; 
 int FUNC2 (struct iwm_rx_packet*) ; 
 int FUNC3 (struct iwm_softc*,struct iwm_host_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct iwm_softc *sc,
	struct iwm_host_cmd *cmd, uint32_t *status)
{
	struct iwm_rx_packet *pkt;
	struct iwm_cmd_response *resp;
	int error, resp_len;

	FUNC0((cmd->flags & IWM_CMD_WANT_SKB) == 0,
	    ("invalid command"));
	cmd->flags |= IWM_CMD_SYNC | IWM_CMD_WANT_SKB;

	if ((error = FUNC3(sc, cmd)) != 0)
		return error;
	pkt = cmd->resp_pkt;

	/* Can happen if RFKILL is asserted */
	if (!pkt) {
		error = 0;
		goto out_free_resp;
	}

	if (pkt->hdr.flags & IWM_CMD_FAILED_MSK) {
		error = EIO;
		goto out_free_resp;
	}

	resp_len = FUNC2(pkt);
	if (resp_len != sizeof(*resp)) {
		error = EIO;
		goto out_free_resp;
	}

	resp = (void *)pkt->data;
	*status = FUNC4(resp->status);
 out_free_resp:
	FUNC1(sc, cmd);
	return error;
}