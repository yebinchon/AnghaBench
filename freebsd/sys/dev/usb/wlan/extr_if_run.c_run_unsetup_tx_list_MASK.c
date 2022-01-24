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
struct run_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; } ;
struct run_softc {int dummy; } ;
struct run_endpoint_queue {struct run_tx_data* tx_data; int /*<<< orphan*/  tx_qh; int /*<<< orphan*/  tx_fh; scalar_t__ tx_nfree; } ;

/* Variables and functions */
 size_t RUN_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct run_softc *sc, struct run_endpoint_queue *pq)
{
	struct run_tx_data *data;

	/* make sure any subsequent use of the queues will fail */
	pq->tx_nfree = 0;
	FUNC0(&pq->tx_fh);
	FUNC0(&pq->tx_qh);

	/* free up all node references and mbufs */
	for (data = &pq->tx_data[0];
	    data < &pq->tx_data[RUN_TX_RING_COUNT]; data++) {
		if (data->m != NULL) {
			FUNC2(data->m);
			data->m = NULL;
		}
		if (data->ni != NULL) {
			FUNC1(data->ni);
			data->ni = NULL;
		}
	}
}