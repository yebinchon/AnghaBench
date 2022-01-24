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
struct netfront_rxq {int* grant_ref; struct mbuf** mbufs; int /*<<< orphan*/  gref_head; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int GRANT_REF_INVALID ; 
 int NET_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC3(struct netfront_rxq *rxq)
{
	int i,  ref;
	struct mbuf *m;

	for (i = 0; i < NET_RX_RING_SIZE; i++) {
		m = rxq->mbufs[i];

		if (m == NULL)
			continue;

		ref = rxq->grant_ref[i];
		if (ref == GRANT_REF_INVALID)
			continue;

		FUNC0(ref);
		FUNC1(&rxq->gref_head, ref);
		rxq->mbufs[i] = NULL;
		rxq->grant_ref[i] = GRANT_REF_INVALID;
		FUNC2(m);
	}
}