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
struct ath_txq {int /*<<< orphan*/  axq_tidq; } ;
struct ath_tid {size_t ac; scalar_t__ sched; } ;
struct ath_softc {struct ath_txq** sc_ac2q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ath_tid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axq_qelem ; 

__attribute__((used)) static void
FUNC2(struct ath_softc *sc, struct ath_tid *tid)
{
	struct ath_txq *txq = sc->sc_ac2q[tid->ac];

	FUNC0(sc);

	if (tid->sched == 0)
		return;

	tid->sched = 0;
	FUNC1(&txq->axq_tidq, tid, axq_qelem);
}