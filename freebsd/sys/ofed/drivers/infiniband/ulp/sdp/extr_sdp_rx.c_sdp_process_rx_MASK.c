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
struct sdp_sock {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  rx_comp_work; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_comp_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC7 (struct sdp_sock*) ; 

int
FUNC8(struct sdp_sock *ssk)
{
	int wc_processed = 0;
	int credits_before;

	if (!FUNC1(&ssk->rx_ring)) {
		FUNC4(ssk->socket, "ring destroyed. not polling it\n");
		return 0;
	}

	credits_before = FUNC7(ssk);

	wc_processed = FUNC5(ssk);
	FUNC6(ssk->socket, NULL, "processed %d", wc_processed);

	if (wc_processed) {
		FUNC6(ssk->socket, NULL, "credits:  %d -> %d",
				credits_before, FUNC7(ssk));
		FUNC0(rx_comp_wq, &ssk->rx_comp_work);
	}
	FUNC3(ssk);

	FUNC2(&ssk->rx_ring);

	return (wc_processed);
}