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
struct TYPE_2__ {struct ib_cq* cq; } ;
struct sdp_sock {TYPE_1__ rx_ring; } ;
struct mbuf {int dummy; } ;
struct ib_wc {int wr_id; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SDP_NUM_WC ; 
 int SDP_OP_RECV ; 
 int FUNC1 (struct ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*,struct mbuf*) ; 
 struct mbuf* FUNC4 (struct sdp_sock*,struct ib_wc*) ; 

__attribute__((used)) static int
FUNC5(struct sdp_sock *ssk)
{
	struct ib_cq *cq = ssk->rx_ring.cq;
	struct ib_wc ibwc[SDP_NUM_WC];
	int n, i;
	int wc_processed = 0;
	struct mbuf *mb;

	do {
		n = FUNC1(cq, SDP_NUM_WC, ibwc);
		for (i = 0; i < n; ++i) {
			struct ib_wc *wc = &ibwc[i];

			FUNC0(!(wc->wr_id & SDP_OP_RECV));
			mb = FUNC4(ssk, wc);
			if (!mb)
				continue;

			FUNC3(ssk, mb);
			wc_processed++;
		}
	} while (n == SDP_NUM_WC);

	if (wc_processed)
		FUNC2(ssk);

	return wc_processed;
}