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
typedef  int /*<<< orphan*/  uint64_t ;
struct octeon_intrmod_cfg {int rx_enable; } ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {int wait_time; struct lio_soft_command* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  iq_no; scalar_t__ virtdptr; scalar_t__ ctxptr; } ;
struct lio_intrmod_context {int status; scalar_t__ cond; int /*<<< orphan*/  octeon_id; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LIO_IQ_SEND_FAILED ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC ; 
 int /*<<< orphan*/  LIO_OPCODE_NIC_INTRMOD_CFG ; 
 struct lio_soft_command* FUNC1 (struct octeon_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct lio_soft_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,struct lio_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct octeon_device*,struct lio_soft_command*) ; 
 int /*<<< orphan*/  lio_set_intrmod_callback ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_intrmod_cfg*,struct octeon_intrmod_cfg*,int) ; 

__attribute__((used)) static int
FUNC11(struct lio *lio, struct octeon_intrmod_cfg *intr_cfg)
{
	struct lio_soft_command		*sc;
	struct lio_intrmod_context	*ctx;
	struct octeon_intrmod_cfg	*cfg;
	struct octeon_device		*oct_dev = lio->oct_dev;
	int	retval;

	/* Alloc soft command */
	sc = FUNC1(oct_dev, sizeof(struct octeon_intrmod_cfg),
				    0, sizeof(struct lio_intrmod_context));

	if (sc == NULL)
		return (ENOMEM);

	ctx = (struct lio_intrmod_context *)sc->ctxptr;

	ctx->cond = 0;
	ctx->octeon_id = FUNC5(oct_dev);

	cfg = (struct octeon_intrmod_cfg *)sc->virtdptr;

	FUNC10(cfg, intr_cfg, sizeof(struct octeon_intrmod_cfg));
	FUNC9((uint64_t *)cfg,
			 (sizeof(struct octeon_intrmod_cfg)) / 8);

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	FUNC6(oct_dev, sc, LIO_OPCODE_NIC,
				 LIO_OPCODE_NIC_INTRMOD_CFG, 0, 0, 0);

	sc->callback = lio_set_intrmod_callback;
	sc->callback_arg = sc;
	sc->wait_time = 1000;

	retval = FUNC7(oct_dev, sc);
	if (retval == LIO_IQ_SEND_FAILED) {
		FUNC4(oct_dev, sc);
		return (EINVAL);
	}

	/*
	 * Sleep on a wait queue till the cond flag indicates that the
	 * response arrived or timed-out.
	 */
	FUNC8(oct_dev, &ctx->cond);

	retval = ctx->status;
	if (retval)
		FUNC2(oct_dev, "intrmod config failed. Status: %llx\n",
			    FUNC0(retval));
	else
		FUNC3(oct_dev, "Rx-Adaptive Interrupt moderation enabled:%llx\n",
			     FUNC0(intr_cfg->rx_enable));

	FUNC4(oct_dev, sc);

	return ((retval) ? ETIMEDOUT : 0);
}