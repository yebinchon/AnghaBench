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
struct ntb_net_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_tq; int /*<<< orphan*/  queue_full; int /*<<< orphan*/  br; int /*<<< orphan*/  qp; } ;
struct ntb_net_ctx {int num_queues; struct ntb_net_queue* queues; int /*<<< orphan*/  media; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ntb_net_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_net_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ntb_net_ctx *sc = FUNC2(dev);
	struct ntb_net_queue *q;
	int i;

	for (i = 0; i < sc->num_queues; i++)
		FUNC9(sc->queues[i].qp);
	FUNC3(sc->ifp);
	FUNC5(sc->ifp);
	FUNC6(&sc->media);
	for (i = 0; i < sc->num_queues; i++) {
		q = &sc->queues[i];
		FUNC8(q->qp);
		FUNC0(q->br, M_DEVBUF);
		FUNC1(&q->queue_full);
		FUNC10(q->tx_tq);
		FUNC7(&q->tx_lock);
	}
	FUNC4(sc->queues, M_DEVBUF);
	return (0);
}