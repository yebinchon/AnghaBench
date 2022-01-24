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
struct sfxge_softc {struct sfxge_evq** evq; } ;
struct sfxge_evq {scalar_t__ init_state; int /*<<< orphan*/  mem; int /*<<< orphan*/  txq; int /*<<< orphan*/ * txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 scalar_t__ SFXGE_EVQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_evq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_evq *evq;

	evq = sc->evq[index];

	FUNC0(evq->init_state == SFXGE_EVQ_INITIALIZED,
	    ("evq->init_state != SFXGE_EVQ_INITIALIZED"));
	FUNC0(evq->txqs == &evq->txq, ("evq->txqs != &evq->txq"));

	FUNC3(&evq->mem);

	sc->evq[index] = NULL;

	FUNC1(evq);

	FUNC2(evq, M_SFXGE);
}