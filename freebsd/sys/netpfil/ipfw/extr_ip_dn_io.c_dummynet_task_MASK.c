#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnet {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct mq {int /*<<< orphan*/ * head; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_id {scalar_t__ type; } ;
struct delay_line {int dummy; } ;
struct TYPE_7__ {struct dn_id* object; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {scalar_t__ elements; } ;
struct TYPE_6__ {scalar_t__ expire; scalar_t__ expire_cycle; scalar_t__ curr_time; TYPE_1__ evheap; struct timeval prev_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ DN_SCH_I ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 
 TYPE_2__ dn_cfg ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC12 (struct mq*,struct dn_sch_inst*,scalar_t__) ; 
 scalar_t__ tick ; 
 int /*<<< orphan*/  tick_adjustment ; 
 scalar_t__ tick_delta ; 
 scalar_t__ tick_delta_sum ; 
 scalar_t__ tick_diff ; 
 int tick_last ; 
 int tick_lost ; 
 int /*<<< orphan*/  FUNC13 (struct mq*,struct delay_line*,scalar_t__) ; 

void
FUNC14(void *context, int pending)
{
	struct timeval t;
	struct mq q = { NULL, NULL }; /* queue to accumulate results */

	FUNC1((struct vnet *)context);

	FUNC2();

	/* Update number of lost(coalesced) ticks. */
	tick_lost += pending - 1;

	FUNC10(&t);
	/* Last tick duration (usec). */
	tick_last = (t.tv_sec - dn_cfg.prev_t.tv_sec) * 1000000 +
	(t.tv_usec - dn_cfg.prev_t.tv_usec);
	/* Last tick vs standard tick difference (usec). */
	tick_delta = (tick_last * hz - 1000000) / hz;
	/* Accumulated tick difference (usec). */
	tick_delta_sum += tick_delta;

	dn_cfg.prev_t = t;

	/*
	* Adjust curr_time if the accumulated tick difference is
	* greater than the 'standard' tick. Since curr_time should
	* be monotonically increasing, we do positive adjustments
	* as required, and throttle curr_time in case of negative
	* adjustment.
	*/
	dn_cfg.curr_time++;
	if (tick_delta_sum - tick >= 0) {
		int diff = tick_delta_sum / tick;

		dn_cfg.curr_time += diff;
		tick_diff += diff;
		tick_delta_sum %= tick;
		tick_adjustment++;
	} else if (tick_delta_sum + tick <= 0) {
		dn_cfg.curr_time--;
		tick_diff--;
		tick_delta_sum += tick;
		tick_adjustment++;
	}

	/* serve pending events, accumulate in q */
	for (;;) {
		struct dn_id *p;    /* generic parameter to handler */

		if (dn_cfg.evheap.elements == 0 ||
		    FUNC4(dn_cfg.curr_time, FUNC5(&dn_cfg.evheap)->key))
			break;
		p = FUNC5(&dn_cfg.evheap)->object;
		FUNC11(&dn_cfg.evheap, NULL);

		if (p->type == DN_SCH_I) {
			FUNC12(&q, (struct dn_sch_inst *)p, dn_cfg.curr_time);
		} else { /* extracted a delay line */
			FUNC13(&q, (struct delay_line *)p, dn_cfg.curr_time);
		}
	}
	if (dn_cfg.expire && ++dn_cfg.expire_cycle >= dn_cfg.expire) {
		dn_cfg.expire_cycle = 0;
		FUNC7();
		FUNC6();
	}

	FUNC8();
	FUNC3();
	if (q.head != NULL)
		FUNC9(q.head);
	FUNC0();
}