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
struct vtnet_txq {int vtntx_watchdog; int /*<<< orphan*/  vtntx_id; TYPE_1__* vtntx_sc; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {struct ifnet* vtnet_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtnet_txq*) ; 

__attribute__((used)) static int
FUNC5(struct vtnet_txq *txq)
{
	struct ifnet *ifp;

	ifp = txq->vtntx_sc->vtnet_ifp;

	FUNC0(txq);
	if (txq->vtntx_watchdog == 1) {
		/*
		 * Only drain completed frames if the watchdog is about to
		 * expire. If any frames were drained, there may be enough
		 * free descriptors now available to transmit queued frames.
		 * In that case, the timer will immediately be decremented
		 * below, but the timeout is generous enough that should not
		 * be a problem.
		 */
		if (FUNC3(txq) != 0)
			FUNC4(txq);
	}

	if (txq->vtntx_watchdog == 0 || --txq->vtntx_watchdog) {
		FUNC1(txq);
		return (0);
	}
	FUNC1(txq);

	FUNC2(ifp, "watchdog timeout on queue %d\n", txq->vtntx_id);
	return (1);
}