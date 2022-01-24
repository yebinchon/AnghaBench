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
struct netif_extra_info {int flags; int type; } ;
struct netfront_rxq {int /*<<< orphan*/  ring; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int XEN_NETIF_EXTRA_FLAG_MORE ; 
 int XEN_NETIF_EXTRA_TYPE_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct netif_extra_info*,struct netif_extra_info*,int) ; 
 struct mbuf* FUNC3 (struct netfront_rxq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct netfront_rxq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_rxq*,struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct netfront_rxq *rxq,
    struct netif_extra_info *extras, RING_IDX rp, RING_IDX *cons)
{
	struct netif_extra_info *extra;

	int err = 0;

	do {
		struct mbuf *m;
		grant_ref_t ref;

		if (FUNC1(*cons + 1 == rp)) {
			err = EINVAL;
			break;
		}

		extra = (struct netif_extra_info *)
		FUNC0(&rxq->ring, ++(*cons));

		if (FUNC1(!extra->type ||
			extra->type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
			err = EINVAL;
		} else {
			FUNC2(&extras[extra->type - 1], extra, sizeof(*extra));
		}

		m = FUNC3(rxq, *cons);
		ref = FUNC4(rxq,  *cons);
		FUNC5(rxq, m, ref);
	} while (extra->flags & XEN_NETIF_EXTRA_FLAG_MORE);

	return err;
}