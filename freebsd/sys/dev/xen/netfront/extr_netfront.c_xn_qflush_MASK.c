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
struct netfront_txq {int /*<<< orphan*/  br; } ;
struct netfront_info {int num_queues; struct netfront_txq* txq; } ;
struct mbuf {int dummy; } ;
struct ifnet {struct netfront_info* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_txq*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct netfront_info *np;
	struct netfront_txq *txq;
	struct mbuf *m;
	int i;

	np = ifp->if_softc;

	for (i = 0; i < np->num_queues; i++) {
		txq = &np->txq[i];

		FUNC0(txq);
		while ((m = FUNC2(txq->br)) != NULL)
			FUNC4(m);
		FUNC1(txq);
	}

	FUNC3(ifp);
}