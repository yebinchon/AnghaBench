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
struct tcpcb {TYPE_1__* sackblks; scalar_t__ rcv_numsacks; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_SACK_BLKS ; 

void
FUNC1(struct tcpcb *tp)
{
	int i;

	FUNC0(tp->t_inpcb);
	tp->rcv_numsacks = 0;
	for (i = 0; i < MAX_SACK_BLKS; i++)
		tp->sackblks[i].start = tp->sackblks[i].end=0;
}