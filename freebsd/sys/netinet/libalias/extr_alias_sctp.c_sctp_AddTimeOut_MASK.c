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
struct sctp_nat_assoc {int exp; int exp_loc; } ;
struct TYPE_2__ {int loc_time; int cur_loc; int /*<<< orphan*/ * TimerQ; } ;
struct libalias {TYPE_1__ sctpNatTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int SN_TIMER_QUEUE_SIZE ; 
 int /*<<< orphan*/  timer_Q ; 

__attribute__((used)) static void
FUNC2(struct libalias *la, struct sctp_nat_assoc *assoc)
{
	int add_loc;
	FUNC0(la);
	add_loc = assoc->exp - la->sctpNatTimer.loc_time + la->sctpNatTimer.cur_loc;
	if (add_loc >= SN_TIMER_QUEUE_SIZE)
		add_loc -= SN_TIMER_QUEUE_SIZE;
	FUNC1(&la->sctpNatTimer.TimerQ[add_loc], assoc, timer_Q);
	assoc->exp_loc = add_loc;
}