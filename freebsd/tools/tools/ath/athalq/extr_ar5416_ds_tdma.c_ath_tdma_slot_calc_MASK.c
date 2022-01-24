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
typedef  int /*<<< orphan*/  t ;
struct if_ath_alq_tdma_slot_calc {int /*<<< orphan*/  avg_minus; int /*<<< orphan*/  avg_plus; int /*<<< orphan*/  tsfdelta; int /*<<< orphan*/  next_slot; int /*<<< orphan*/  nexttbtt; } ;
struct TYPE_2__ {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_tdma_slot_calc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned long long,unsigned long long,unsigned long long,int,int,int) ; 

__attribute__((used)) static void
FUNC4(struct if_ath_alq_payload *a)
{
	struct if_ath_alq_tdma_slot_calc t;

	FUNC2(&t, &a->payload, sizeof(t));
	FUNC3("[%u] [%llu] SLOTCALC: NEXTTBTT=%llu nextslot=%llu tsfdelta=%d avg (%d/%d)\n",
	    (unsigned int) FUNC0(a->hdr.tstamp),
	    (unsigned long long) FUNC1(a->hdr.threadid),
	    (unsigned long long) FUNC1(t.nexttbtt),
	    (unsigned long long) FUNC1(t.next_slot),
	    (int) FUNC0(t.tsfdelta),
	    (int) FUNC0(t.avg_plus),
	    (int) FUNC0(t.avg_minus));
}