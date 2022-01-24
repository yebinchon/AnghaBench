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
struct sctp_nat_assoc {int dummy; } ;
struct TYPE_2__ {struct sctp_nat_assoc* TimerQ; } ;
struct libalias {TYPE_1__ sctpNatTimer; struct sctp_nat_assoc* sctpTableGlobal; struct sctp_nat_assoc* sctpTableLocal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 struct sctp_nat_assoc* FUNC1 (struct sctp_nat_assoc*) ; 
 struct sctp_nat_assoc* FUNC2 (struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_EVENT ; 
 int SN_TIMER_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  timer_Q ; 

void FUNC7(struct libalias *la)
{
	struct sctp_nat_assoc *assoc1, *assoc2;
	int                   i;

	FUNC0(la);
	FUNC3(SN_LOG_EVENT,
	    FUNC4("Removing SCTP NAT Instance\n"));
	for (i = 0; i < SN_TIMER_QUEUE_SIZE; i++) {
		assoc1 = FUNC1(&la->sctpNatTimer.TimerQ[i]);
		while (assoc1 != NULL) {
			FUNC5(assoc1);
			assoc2 = FUNC2(assoc1, timer_Q);
			FUNC6(assoc1);
			assoc1 = assoc2;
		}
	}

	FUNC6(la->sctpTableLocal);
	FUNC6(la->sctpTableGlobal);
	FUNC6(la->sctpNatTimer.TimerQ);
}