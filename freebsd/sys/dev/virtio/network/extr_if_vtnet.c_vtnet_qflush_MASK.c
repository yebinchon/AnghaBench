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
struct vtnet_txq {int /*<<< orphan*/  vtntx_br; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;
struct mbuf {int dummy; } ;
struct ifnet {struct vtnet_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct vtnet_softc *sc;
	struct vtnet_txq *txq;
	struct mbuf *m;
	int i;

	sc = ifp->if_softc;

	for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
		txq = &sc->vtnet_txqs[i];

		FUNC0(txq);
		while ((m = FUNC2(txq->vtntx_br)) != NULL)
			FUNC4(m);
		FUNC1(txq);
	}

	FUNC3(ifp);
}