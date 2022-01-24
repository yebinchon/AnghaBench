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
struct mbuf_ext_pgs {TYPE_1__* tls; int /*<<< orphan*/ * mbuf; } ;
struct ktls_wq {int running; int /*<<< orphan*/  mtx; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {size_t wq_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf_ext_pgs*,int /*<<< orphan*/ ) ; 
 struct ktls_wq* ktls_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stailq ; 
 int /*<<< orphan*/  FUNC3 (struct ktls_wq*) ; 

void
FUNC4(struct mbuf_ext_pgs *pgs)
{
	struct ktls_wq *wq;
	bool running;

	/* Mark it for freeing. */
	pgs->mbuf = NULL;
	wq = &ktls_wq[pgs->tls->wq_index];
	FUNC1(&wq->mtx);
	FUNC0(&wq->head, pgs, stailq);
	running = wq->running;
	FUNC2(&wq->mtx);
	if (!running)
		FUNC3(wq);
}