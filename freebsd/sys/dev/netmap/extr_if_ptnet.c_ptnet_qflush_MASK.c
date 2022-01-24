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
struct ptnet_softc {int num_rings; struct ptnet_queue* queues; } ;
struct ptnet_queue {scalar_t__ bufring; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ptnet_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct ptnet_queue*) ; 
 struct mbuf* FUNC2 (scalar_t__) ; 
 struct ptnet_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC6(if_t ifp)
{
	struct ptnet_softc *sc = FUNC3(ifp);
	int i;

	/* Flush all the bufrings and do the interface flush. */
	for (i = 0; i < sc->num_rings; i++) {
		struct ptnet_queue *pq = sc->queues + i;
		struct mbuf *m;

		FUNC0(pq);
		if (pq->bufring) {
			while ((m = FUNC2(pq->bufring))) {
				FUNC5(m);
			}
		}
		FUNC1(pq);
	}

	FUNC4(ifp);
}