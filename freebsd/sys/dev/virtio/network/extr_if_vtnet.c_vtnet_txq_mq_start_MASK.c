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
struct vtnet_txq {int /*<<< orphan*/  vtntx_defrtask; int /*<<< orphan*/  vtntx_tq; int /*<<< orphan*/  vtntx_br; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {struct vtnet_softc* if_softc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 scalar_t__ FUNC1 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_txq*) ; 
 int curcpu ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vtnet_txq*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, struct mbuf *m)
{
	struct vtnet_softc *sc;
	struct vtnet_txq *txq;
	int i, npairs, error;

	sc = ifp->if_softc;
	npairs = sc->vtnet_act_vq_pairs;

	/* check if flowid is set */
	if (FUNC0(m) != M_HASHTYPE_NONE)
		i = m->m_pkthdr.flowid % npairs;
	else
		i = curcpu % npairs;

	txq = &sc->vtnet_txqs[i];

	if (FUNC1(txq) != 0) {
		error = FUNC5(txq, m);
		FUNC2(txq);
	} else {
		error = FUNC3(ifp, txq->vtntx_br, m);
		FUNC4(txq->vtntx_tq, &txq->vtntx_defrtask);
	}

	return (error);
}