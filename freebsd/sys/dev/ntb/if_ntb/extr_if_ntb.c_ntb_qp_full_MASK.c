#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ntb_net_queue {int /*<<< orphan*/  queue_full; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  tx_tq; int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct ntb_net_queue *q = arg;

	FUNC0(KTR_NTB, "TX: qp_full callout");
	if (FUNC2(q->qp) > 0)
		FUNC3(q->tx_tq, &q->tx_task);
	else
		FUNC1(&q->queue_full,
		    SBT_1MS / 4, SBT_1MS / 4, 0);
}