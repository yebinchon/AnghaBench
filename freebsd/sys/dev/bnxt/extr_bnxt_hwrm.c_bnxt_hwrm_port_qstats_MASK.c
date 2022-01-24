#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hwrm_port_qstats_input {void* tx_stat_host_addr; void* rx_stat_host_addr; int /*<<< orphan*/  port_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  idi_paddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  idi_paddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct bnxt_softc {TYPE_1__ hw_tx_port_stats; TYPE_3__ hw_rx_port_stats; TYPE_2__ pf; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  HWRM_PORT_QSTATS ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_port_qstats_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_port_qstats_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct bnxt_softc *softc)
{
	struct hwrm_port_qstats_input req = {0};
	int rc = 0;

	FUNC3(softc, &req, HWRM_PORT_QSTATS);

	req.port_id = FUNC4(softc->pf.port_id);
	req.rx_stat_host_addr = FUNC5(softc->hw_rx_port_stats.idi_paddr);
	req.tx_stat_host_addr = FUNC5(softc->hw_tx_port_stats.idi_paddr);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	FUNC1(softc);

	return rc;
}