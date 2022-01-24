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
struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_txq*) ; 

__attribute__((used)) static void
FUNC4(struct vtnet_softc *sc)
{
	struct vtnet_txq *txq;
	int i;

	FUNC0(sc);

	for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
		txq = &sc->vtnet_txqs[i];

		FUNC1(txq);
		FUNC3(txq);
		FUNC2(txq);
	}
}