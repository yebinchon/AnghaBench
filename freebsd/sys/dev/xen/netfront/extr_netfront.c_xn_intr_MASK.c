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
struct netfront_txq {size_t id; struct netfront_info* info; } ;
struct netfront_rxq {int dummy; } ;
struct netfront_info {struct netfront_rxq* rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_txq*) ; 

__attribute__((used)) static void
FUNC2(void *xsc)
{
	struct netfront_txq *txq = xsc;
	struct netfront_info *np = txq->info;
	struct netfront_rxq *rxq = &np->rxq[txq->id];

	/* kick both tx and rx */
	FUNC0(rxq);
	FUNC1(txq);
}