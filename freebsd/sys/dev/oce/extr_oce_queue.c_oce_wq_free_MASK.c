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
struct oce_wq {int /*<<< orphan*/  tx_compl_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * br; int /*<<< orphan*/ * tag; TYPE_1__* pckts; int /*<<< orphan*/ * ring; int /*<<< orphan*/  txtask; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int OCE_WQ_PACKET_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct oce_wq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC8(struct oce_wq *wq)
{
	POCE_SOFTC sc = (POCE_SOFTC) wq->parent;
	int i;

	FUNC7(taskqueue_swi, &wq->txtask);

	if (wq->ring != NULL) {
		FUNC6(sc, wq->ring);
		wq->ring = NULL;
	}

	for (i = 0; i < OCE_WQ_PACKET_ARRAY_SIZE; i++) {
		if (wq->pckts[i].map != NULL) {
			FUNC4(wq->tag, wq->pckts[i].map);
			FUNC3(wq->tag, wq->pckts[i].map);
			wq->pckts[i].map = NULL;
		}
	}

	if (wq->tag != NULL)
		FUNC2(wq->tag);
	if (wq->br != NULL)
		FUNC1(wq->br, M_DEVBUF);

	FUNC0(&wq->tx_lock);
	FUNC0(&wq->tx_compl_lock);
	FUNC5(wq, M_DEVBUF);
}