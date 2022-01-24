#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct in_conninfo {int dummy; } ;
struct hc_metrics {TYPE_1__* rmx_head; int /*<<< orphan*/  rmx_mtu; int /*<<< orphan*/  rmx_expire; int /*<<< orphan*/  rmx_updates; } ;
struct TYPE_4__ {int /*<<< orphan*/  expire; } ;
struct TYPE_3__ {int /*<<< orphan*/  hch_mtx; int /*<<< orphan*/  hch_bucket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hc_metrics*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hc_metrics*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ V_tcp_hostcache ; 
 int /*<<< orphan*/  V_tcp_use_hostcache ; 
 int /*<<< orphan*/  rmx_q ; 
 struct hc_metrics* FUNC3 (struct in_conninfo*) ; 
 struct hc_metrics* FUNC4 (struct in_conninfo*) ; 

void
FUNC5(struct in_conninfo *inc, uint32_t mtu)
{
	struct hc_metrics *hc_entry;

	if (!V_tcp_use_hostcache)
		return;

	/*
	 * Find the right bucket.
	 */
	hc_entry = FUNC4(inc);

	/*
	 * If we don't have an existing object, try to insert a new one.
	 */
	if (hc_entry == NULL) {
		hc_entry = FUNC3(inc);
		if (hc_entry == NULL)
			return;
	}
	hc_entry->rmx_updates++;
	hc_entry->rmx_expire = V_tcp_hostcache.expire; /* start over again */

	hc_entry->rmx_mtu = mtu;

	/*
	 * Put it upfront so we find it faster next time.
	 */
	FUNC1(&hc_entry->rmx_head->hch_bucket, hc_entry, rmx_q);
	FUNC0(&hc_entry->rmx_head->hch_bucket, hc_entry, rmx_q);

	/*
	 * Unlock bucket row.
	 */
	FUNC2(&hc_entry->rmx_head->hch_mtx);
}