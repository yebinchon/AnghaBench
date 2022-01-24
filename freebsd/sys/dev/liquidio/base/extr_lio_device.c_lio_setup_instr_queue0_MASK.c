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
struct TYPE_6__ {scalar_t__ qpg; scalar_t__ use_qpg; int /*<<< orphan*/  pkind; int /*<<< orphan*/  q_no; } ;
union octeon_txpciq {TYPE_3__ s; scalar_t__ txpciq64; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  pkind; } ;
struct octeon_device {scalar_t__ num_iqs; TYPE_2__ pfvf_hsword; TYPE_1__** instr_queue; } ;
struct TYPE_4__ {scalar_t__ ifidx; void* app_ctx; scalar_t__ q_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct octeon_device*,union octeon_txpciq,int /*<<< orphan*/ ) ; 

int
FUNC5(struct octeon_device *oct)
{
	union octeon_txpciq	txpciq;
	uint32_t	iq_no = 0;
	uint32_t	num_descs = 0;

	if (FUNC1(oct))
		num_descs =
			FUNC2(FUNC0(oct,
								   cn23xx_pf));

	oct->num_iqs = 0;

	oct->instr_queue[0]->q_index = 0;
	oct->instr_queue[0]->app_ctx = (void *)(size_t)0;
	oct->instr_queue[0]->ifidx = 0;
	txpciq.txpciq64 = 0;
	txpciq.s.q_no = iq_no;
	txpciq.s.pkind = oct->pfvf_hsword.pkind;
	txpciq.s.use_qpg = 0;
	txpciq.s.qpg = 0;
	if (FUNC4(oct, txpciq, num_descs)) {
		/* prevent memory leak */
		FUNC3(oct, 0);
		return (1);
	}

	oct->num_iqs++;
	return (0);
}