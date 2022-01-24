#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int req; int mask; int /*<<< orphan*/ * lanai; } ;
typedef  TYPE_1__ mxge_tx_ring_t ;
typedef  int /*<<< orphan*/  mcp_kreq_ether_send_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void
FUNC2(mxge_tx_ring_t *tx,
			    mcp_kreq_ether_send_t *src, int cnt)
{
	int idx, starting_slot;
	starting_slot = tx->req;
	while (cnt > 1) {
		cnt--;
		idx = (starting_slot + cnt) & tx->mask;
		FUNC0(&tx->lanai[idx],
			      &src[cnt], sizeof(*src));
		FUNC1();
	}
}