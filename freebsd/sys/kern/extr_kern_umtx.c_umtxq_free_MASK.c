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
struct umtx_q {struct umtx_q* uq_spare_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UMTX ; 
 int /*<<< orphan*/  FUNC1 (struct umtx_q*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct umtx_q *uq)
{

	FUNC0(uq->uq_spare_queue != NULL);
	FUNC1(uq->uq_spare_queue, M_UMTX);
	FUNC1(uq, M_UMTX);
}