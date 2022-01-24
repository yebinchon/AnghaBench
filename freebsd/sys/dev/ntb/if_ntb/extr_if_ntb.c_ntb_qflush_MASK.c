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
struct ntb_net_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  br; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 struct mbuf* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ntb_net_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(if_t ifp)
{
	struct ntb_net_ctx *sc = FUNC1(ifp);
	struct ntb_net_queue *q;
	struct mbuf *m;
	int i;

	for (i = 0; i < sc->num_queues; i++) {
		q = &sc->queues[i];
		FUNC4(&q->tx_lock);
		while ((m = FUNC0(q->br)) != NULL)
			FUNC3(m);
		FUNC5(&q->tx_lock);
	}
	FUNC2(ifp);
}