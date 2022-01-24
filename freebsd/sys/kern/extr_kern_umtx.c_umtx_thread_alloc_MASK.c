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
struct umtx_q {scalar_t__ uq_flags; int /*<<< orphan*/  uq_pi_contested; int /*<<< orphan*/ * uq_pi_blocked; struct thread* uq_thread; int /*<<< orphan*/  uq_inherited_pri; } ;
struct thread {struct umtx_q* td_umtxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PRI_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct thread *td)
{
	struct umtx_q *uq;

	uq = td->td_umtxq;
	uq->uq_inherited_pri = PRI_MAX;

	FUNC0(uq->uq_flags == 0, ("uq_flags != 0"));
	FUNC0(uq->uq_thread == td, ("uq_thread != td"));
	FUNC0(uq->uq_pi_blocked == NULL, ("uq_pi_blocked != NULL"));
	FUNC0(FUNC1(&uq->uq_pi_contested), ("uq_pi_contested is not empty"));
}