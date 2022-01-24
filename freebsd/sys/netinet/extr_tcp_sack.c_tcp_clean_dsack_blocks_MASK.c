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
typedef  void* tcp_seq ;
struct tcpcb {int rcv_numsacks; TYPE_1__* sackblks; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  t_inpcb; } ;
struct sackblk {void* end; void* start; } ;
struct TYPE_2__ {void* end; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_SACK_BLKS ; 
 scalar_t__ FUNC1 (void*,void*) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sackblk*,TYPE_1__*,int) ; 

void
FUNC4(struct tcpcb *tp)
{
	struct sackblk saved_blks[MAX_SACK_BLKS];
	int num_saved, i;

	FUNC0(tp->t_inpcb);
	/*
	 * Clean up any DSACK blocks that
	 * are in our queue of sack blocks.
	 * 
	 */
	num_saved = 0;
	for (i = 0; i < tp->rcv_numsacks; i++) {
		tcp_seq start = tp->sackblks[i].start;
		tcp_seq end = tp->sackblks[i].end;
		if (FUNC1(start, end) || FUNC2(start, tp->rcv_nxt)) {
			/*
			 * Discard this D-SACK block.
			 */
			continue;
		}
		/*
		 * Save this SACK block.
		 */
		saved_blks[num_saved].start = start;
		saved_blks[num_saved].end = end;
		num_saved++;
	}
	if (num_saved > 0) {
		/*
		 * Copy the saved SACK blocks back.
		 */
		FUNC3(saved_blks, &tp->sackblks[0],
		      sizeof(struct sackblk) * num_saved);
	}
	tp->rcv_numsacks = num_saved;
}