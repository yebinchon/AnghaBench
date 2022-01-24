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
struct netfront_txq {int /*<<< orphan*/  defrtask; int /*<<< orphan*/  tq; int /*<<< orphan*/  br; } ;
struct netfront_info {int num_queues; struct netfront_txq* txq; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {struct netfront_info* if_softc; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 scalar_t__ FUNC2 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_txq*) ; 
 int curcpu ; 
 int FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct netfront_txq*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, struct mbuf *m)
{
	struct netfront_info *np;
	struct netfront_txq *txq;
	int i, npairs, error;

	np = ifp->if_softc;
	npairs = np->num_queues;

	if (!FUNC5(np))
		return (ENOBUFS);

	FUNC0(npairs != 0, ("called with 0 available queues"));

	/* check if flowid is set */
	if (FUNC1(m) != M_HASHTYPE_NONE)
		i = m->m_pkthdr.flowid % npairs;
	else
		i = curcpu % npairs;

	txq = &np->txq[i];

	if (FUNC2(txq) != 0) {
		error = FUNC7(txq, m);
		FUNC3(txq);
	} else {
		error = FUNC4(ifp, txq->br, m);
		FUNC6(txq->tq, &txq->defrtask);
	}

	return (error);
}