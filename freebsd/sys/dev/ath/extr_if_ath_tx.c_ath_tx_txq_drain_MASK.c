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
struct ath_tid {int /*<<< orphan*/  an; } ;
struct ath_softc {int dummy; } ;
struct ath_buf {int dummy; } ;
typedef  int /*<<< orphan*/  ath_bufhead ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ,struct ath_tid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,struct ath_tid*) ; 
 int /*<<< orphan*/  bf_list ; 

void
FUNC9(struct ath_softc *sc, struct ath_txq *txq)
{
	struct ath_tid *tid;
	ath_bufhead bf_cq;
	struct ath_buf *bf;

	FUNC4(&bf_cq);
	FUNC0(sc);

	/*
	 * Iterate over all active tids for the given txq,
	 * flushing and unsched'ing them
	 */
	while (! FUNC2(&txq->axq_tidq)) {
		tid = FUNC3(&txq->axq_tidq);
		FUNC7(sc, tid->an, tid, &bf_cq);
		FUNC8(sc, tid);
	}

	FUNC1(sc);

	while ((bf = FUNC3(&bf_cq)) != NULL) {
		FUNC5(&bf_cq, bf, bf_list);
		FUNC6(sc, bf, 0);
	}
}