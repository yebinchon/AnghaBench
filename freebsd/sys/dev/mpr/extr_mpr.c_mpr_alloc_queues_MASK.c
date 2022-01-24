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
struct mpr_softc {int msi_msgs; struct mpr_queue* queues; } ;
struct mpr_queue {int qnum; struct mpr_softc* sc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MPR_INIT ; 
 int MPR_XINFO ; 
 int /*<<< orphan*/  M_MPR ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct mpr_queue* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpr_softc*,int,char*,int,...) ; 

__attribute__((used)) static int
FUNC2(struct mpr_softc *sc)
{
	struct mpr_queue *q;
	int nq, i;

	nq = sc->msi_msgs;
	FUNC1(sc, MPR_INIT|MPR_XINFO, "Allocating %d I/O queues\n", nq);

	sc->queues = FUNC0(sizeof(struct mpr_queue) * nq, M_MPR,
	     M_NOWAIT|M_ZERO);
	if (sc->queues == NULL)
		return (ENOMEM);

	for (i = 0; i < nq; i++) {
		q = &sc->queues[i];
		FUNC1(sc, MPR_INIT, "Configuring queue %d %p\n", i, q);
		q->sc = sc;
		q->qnum = i;
	}
	return (0);
}