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
struct vtnet_txq {int /*<<< orphan*/  vtntx_br; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {int /*<<< orphan*/  vtnet_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_txq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *xtxq, int pending)
{
	struct vtnet_softc *sc;
	struct vtnet_txq *txq;

	txq = xtxq;
	sc = txq->vtntx_sc;

	FUNC0(txq);
	if (!FUNC2(sc->vtnet_ifp, txq->vtntx_br))
		FUNC3(txq, NULL);
	FUNC1(txq);
}