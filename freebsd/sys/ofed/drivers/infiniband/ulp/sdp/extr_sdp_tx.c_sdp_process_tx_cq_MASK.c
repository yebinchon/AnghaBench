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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  cq; } ;
struct sdp_sock {int /*<<< orphan*/  socket; TYPE_1__ tx_ring; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int SDP_NUM_WC ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*,struct ib_wc*) ; 
 int /*<<< orphan*/  sk ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sdp_sock*) ; 

__attribute__((used)) static int
FUNC8(struct sdp_sock *ssk)
{
	struct ib_wc ibwc[SDP_NUM_WC];
	int n, i;
	int wc_processed = 0;

	FUNC0(ssk);

	if (!ssk->tx_ring.cq) {
		FUNC2(ssk->socket, "tx irq on destroyed tx_cq\n");
		return 0;
	}

	do {
		n = FUNC1(ssk->tx_ring.cq, SDP_NUM_WC, ibwc);
		for (i = 0; i < n; ++i) {
			FUNC5(ssk, ibwc + i);
			wc_processed++;
		}
	} while (n == SDP_NUM_WC);

	if (wc_processed) {
		FUNC3(ssk, M_NOWAIT);
		FUNC4(sk, NULL, "Waking sendmsg. inflight=%d", 
				(u32) FUNC7(ssk));
		FUNC6(ssk->socket);
	}

	return wc_processed;
}