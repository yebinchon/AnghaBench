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
struct netfront_txq {int /*<<< orphan*/  xen_intr_handle; } ;
struct netfront_rxq {int dummy; } ;
struct netfront_info {int num_queues; struct netfront_rxq* rxq; struct netfront_txq* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_txq*) ; 

__attribute__((used)) static void
FUNC7(struct netfront_info *np)
{
	struct netfront_rxq *rxq;
	struct netfront_txq *txq;
	int i;

	for (i = 0; i < np->num_queues; i++) {
		txq = &np->txq[i];
		rxq = &np->rxq[i];
		FUNC4(txq->xen_intr_handle);
		FUNC2(txq);
		FUNC6(txq);
		FUNC3(txq);
		FUNC0(rxq);
		FUNC5(rxq);
		FUNC1(rxq);
	}
}