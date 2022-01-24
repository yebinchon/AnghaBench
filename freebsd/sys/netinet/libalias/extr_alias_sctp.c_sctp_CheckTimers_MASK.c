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
struct sctp_nat_assoc {scalar_t__ exp; scalar_t__ state; int /*<<< orphan*/  g_vtag; } ;
struct TYPE_2__ {scalar_t__ loc_time; size_t cur_loc; int /*<<< orphan*/ * TimerQ; } ;
struct libalias {scalar_t__ timeStamp; TYPE_1__ sctpNatTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sctp_nat_assoc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct libalias*,struct sctp_nat_assoc*) ; 
 scalar_t__ SN_CL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_DEBUG ; 
 int /*<<< orphan*/  SN_LOG_INFO ; 
 size_t SN_TIMER_QUEUE_SIZE ; 
 int /*<<< orphan*/  SN_TO_NODIR ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct libalias*,struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  timer_Q ; 

void
FUNC10(struct libalias *la)
{
	struct sctp_nat_assoc *assoc;

	FUNC0(la);
	while(la->timeStamp >= la->sctpNatTimer.loc_time) {
		while (!FUNC1(&la->sctpNatTimer.TimerQ[la->sctpNatTimer.cur_loc])) {
			assoc = FUNC2(&la->sctpNatTimer.TimerQ[la->sctpNatTimer.cur_loc]);
			//SLIST_REMOVE_HEAD(&la->sctpNatTimer.TimerQ[la->sctpNatTimer.cur_loc], timer_Q);
			FUNC3(assoc, timer_Q);
			if (la->timeStamp >= assoc->exp) { /* state expired */
				FUNC5(((assoc->state == SN_CL) ? (SN_LOG_DEBUG) : (SN_LOG_INFO)),
				    FUNC7("Timer Expired", assoc->g_vtag, assoc->state, SN_TO_NODIR));
				FUNC4(la, assoc);
				FUNC6(assoc);
				FUNC9(assoc);
			} else {/* state not expired, reschedule timer*/
				FUNC8(la, assoc);
			}
		}
		/* Goto next location in the timer queue*/
		++la->sctpNatTimer.loc_time;
		if (++la->sctpNatTimer.cur_loc >= SN_TIMER_QUEUE_SIZE)
			la->sctpNatTimer.cur_loc = 0;
	}
}