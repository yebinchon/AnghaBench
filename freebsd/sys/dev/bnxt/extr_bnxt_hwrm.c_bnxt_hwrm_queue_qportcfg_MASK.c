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
typedef  int /*<<< orphan*/  uint8_t ;
struct hwrm_queue_qportcfg_output {scalar_t__ max_configurable_queues; int /*<<< orphan*/  queue_id0; } ;
struct hwrm_queue_qportcfg_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {scalar_t__ max_tc; TYPE_2__* q_info; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_4__ {int /*<<< orphan*/  profile; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 scalar_t__ BNXT_MAX_QUEUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  HWRM_QUEUE_QPORTCFG ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_queue_qportcfg_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_queue_qportcfg_input*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct bnxt_softc *softc)
{
	struct hwrm_queue_qportcfg_input req = {0};
	struct hwrm_queue_qportcfg_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;

	int	rc = 0;
	uint8_t	*qptr;

	FUNC3(softc, &req, HWRM_QUEUE_QPORTCFG);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto qportcfg_exit;

	if (!resp->max_configurable_queues) {
		rc = -EINVAL;
		goto qportcfg_exit;
	}
	softc->max_tc = resp->max_configurable_queues;
	if (softc->max_tc > BNXT_MAX_QUEUE)
		softc->max_tc = BNXT_MAX_QUEUE;

	qptr = &resp->queue_id0;
	for (int i = 0; i < softc->max_tc; i++) {
		softc->q_info[i].id = *qptr++;
		softc->q_info[i].profile = *qptr++;
	}

qportcfg_exit:
	FUNC1(softc);
	return (rc);
}