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
struct sfxge_softc {struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; int /*<<< orphan*/  mem; struct sfxge_rxq* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 scalar_t__ SFXGE_RXQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_rxq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_rxq*) ; 

__attribute__((used)) static void
FUNC4(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_rxq *rxq;

	rxq = sc->rxq[index];

	FUNC0(rxq->init_state == SFXGE_RXQ_INITIALIZED,
	    ("rxq->init_state != SFXGE_RXQ_INITIALIZED"));

	/* Free the context array and the flow table. */
	FUNC1(rxq->queue, M_SFXGE);
	FUNC3(rxq);

	/* Release DMA memory. */
	FUNC2(&rxq->mem);

	sc->rxq[index] = NULL;

	FUNC1(rxq, M_SFXGE);
}