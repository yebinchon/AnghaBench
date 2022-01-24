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
struct ptnet_softc {struct ptnet_queue* queues; } ;
struct ptnet_queue {int /*<<< orphan*/  ktoa; int /*<<< orphan*/  atok; } ;
struct netmap_kring {int ring_id; TYPE_1__* na; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 struct ptnet_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netmap_kring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ptnet_queue*) ; 

__attribute__((used)) static int
FUNC3(struct netmap_kring *kring, int flags)
{
	struct ptnet_softc *sc = FUNC0(kring->na->ifp);
	struct ptnet_queue *pq = sc->queues + kring->ring_id;
	bool notify;

	notify = FUNC1(pq->atok, pq->ktoa, kring, flags);
	if (notify) {
		FUNC2(pq);
	}

	return 0;
}