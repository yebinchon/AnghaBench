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
struct octeon_device {int dummy; } ;
struct lio_soft_command {int wait_time; struct lio_soft_command* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  iq_no; scalar_t__ virtrptr; } ;
struct lio_fw_stats_resp {int dummy; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {int /*<<< orphan*/  stats_interval; int /*<<< orphan*/  stats_timer; TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 int LIO_IQ_SEND_FAILED ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC_PORT_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct lio_fw_stats_resp*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct lio_soft_command* FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,struct lio_soft_command*) ; 
 int /*<<< orphan*/  lio_fw_stats_callback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,struct lio_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct octeon_device*,struct lio_soft_command*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct lio		*lio = arg;
	struct octeon_device	*oct_dev = lio->oct_dev;
	struct lio_soft_command	*sc;
	struct lio_fw_stats_resp *resp;
	int	retval;

	if (FUNC2(&lio->stats_timer) ||
	    FUNC1(&lio->stats_timer) == 0)
		return;

	/* Alloc soft command */
	sc = FUNC4(oct_dev, 0,
				    sizeof(struct lio_fw_stats_resp), 0);

	if (sc == NULL)
		goto alloc_sc_failed;

	resp = (struct lio_fw_stats_resp *)sc->virtrptr;
	FUNC0(resp, sizeof(struct lio_fw_stats_resp));

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	FUNC7(oct_dev, sc, LIO_OPCODE_NIC,
				 LIO_OPCODE_NIC_PORT_STATS, 0, 0, 0);

	sc->callback = lio_fw_stats_callback;
	sc->callback_arg = sc;
	sc->wait_time = 500;		/* in milli seconds */

	retval = FUNC8(oct_dev, sc);
	if (retval == LIO_IQ_SEND_FAILED)
		goto send_sc_failed;

	return;

send_sc_failed:
	FUNC5(oct_dev, sc);
alloc_sc_failed:
	FUNC3(&lio->stats_timer,
			 FUNC6(lio->stats_interval));
}