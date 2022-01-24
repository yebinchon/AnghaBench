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
struct mbuf {int dummy; } ;
struct al_eth_ring {int enqueue_is_running; int /*<<< orphan*/  br_mtx; int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct al_eth_ring*,struct mbuf*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ napi ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct al_eth_ring *tx_ring = arg;
	struct mbuf *mbuf;

	if (napi != 0) {
		tx_ring->enqueue_is_running = 1;
		FUNC0();
	}

	while (1) {
		FUNC3(&tx_ring->br_mtx);
		mbuf = FUNC2(NULL, tx_ring->br);
		FUNC4(&tx_ring->br_mtx);

		if (mbuf == NULL)
			break;

		FUNC1(tx_ring, mbuf);
	}

	if (napi != 0) {
		tx_ring->enqueue_is_running = 0;
		FUNC0();
		while (1) {
			FUNC3(&tx_ring->br_mtx);
			mbuf = FUNC2(NULL, tx_ring->br);
			FUNC4(&tx_ring->br_mtx);
			if (mbuf == NULL)
				break;
			FUNC1(tx_ring, mbuf);
		}
	}
}