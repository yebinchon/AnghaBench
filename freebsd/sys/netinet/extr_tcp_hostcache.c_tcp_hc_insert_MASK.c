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
struct in_conninfo {int inc_flags; int /*<<< orphan*/  inc_faddr; int /*<<< orphan*/  inc6_zoneid; int /*<<< orphan*/  inc6_faddr; } ;
struct hc_metrics {int /*<<< orphan*/  rmx_expire; struct hc_head* rmx_head; int /*<<< orphan*/  ip4; int /*<<< orphan*/  ip6_zoneid; int /*<<< orphan*/  ip6; } ;
struct hc_head {scalar_t__ hch_length; int /*<<< orphan*/  hch_bucket; int /*<<< orphan*/  hch_mtx; } ;
struct TYPE_2__ {scalar_t__ bucket_limit; scalar_t__ cache_count; scalar_t__ cache_limit; struct hc_head* hashbase; int /*<<< orphan*/  expire; int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int INC_ISIPV6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hc_metrics*,int /*<<< orphan*/ ) ; 
 struct hc_metrics* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hc_metrics*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__ V_tcp_hostcache ; 
 int /*<<< orphan*/  V_tcp_use_hostcache ; 
 int /*<<< orphan*/  FUNC9 (struct hc_metrics*,int) ; 
 int /*<<< orphan*/  hc_qhead ; 
 int /*<<< orphan*/  rmx_q ; 
 int /*<<< orphan*/  tcps_hc_added ; 
 int /*<<< orphan*/  tcps_hc_bucketoverflow ; 
 struct hc_metrics* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct hc_metrics*) ; 

__attribute__((used)) static struct hc_metrics *
FUNC12(struct in_conninfo *inc)
{
	int hash;
	struct hc_head *hc_head;
	struct hc_metrics *hc_entry;

	if (!V_tcp_use_hostcache)
		return NULL;

	FUNC2(inc != NULL, ("tcp_hc_insert with NULL in_conninfo pointer"));

	/*
	 * Hash the foreign ip address.
	 */
	if (inc->inc_flags & INC_ISIPV6)
		hash = FUNC1(&inc->inc6_faddr);
	else
		hash = FUNC0(&inc->inc_faddr);

	hc_head = &V_tcp_hostcache.hashbase[hash];

	/*
	 * Acquire lock for this bucket row; we release the lock if we don't
	 * find an entry, otherwise the caller has to unlock after he is
	 * done.
	 */
	FUNC7(&hc_head->hch_mtx);

	/*
	 * If the bucket limit is reached, reuse the least-used element.
	 */
	if (hc_head->hch_length >= V_tcp_hostcache.bucket_limit ||
	    V_tcp_hostcache.cache_count >= V_tcp_hostcache.cache_limit) {
		hc_entry = FUNC4(&hc_head->hch_bucket, hc_qhead);
		/*
		 * At first we were dropping the last element, just to
		 * reacquire it in the next two lines again, which isn't very
		 * efficient.  Instead just reuse the least used element.
		 * We may drop something that is still "in-use" but we can be
		 * "lossy".
		 * Just give up if this bucket row is empty and we don't have
		 * anything to replace.
		 */
		if (hc_entry == NULL) {
			FUNC8(&hc_head->hch_mtx);
			return NULL;
		}
		FUNC5(&hc_head->hch_bucket, hc_entry, rmx_q);
		V_tcp_hostcache.hashbase[hash].hch_length--;
		V_tcp_hostcache.cache_count--;
		FUNC6(tcps_hc_bucketoverflow);
#if 0
		uma_zfree(V_tcp_hostcache.zone, hc_entry);
#endif
	} else {
		/*
		 * Allocate a new entry, or balk if not possible.
		 */
		hc_entry = FUNC10(V_tcp_hostcache.zone, M_NOWAIT);
		if (hc_entry == NULL) {
			FUNC8(&hc_head->hch_mtx);
			return NULL;
		}
	}

	/*
	 * Initialize basic information of hostcache entry.
	 */
	FUNC9(hc_entry, sizeof(*hc_entry));
	if (inc->inc_flags & INC_ISIPV6) {
		hc_entry->ip6 = inc->inc6_faddr;
		hc_entry->ip6_zoneid = inc->inc6_zoneid;
	} else
		hc_entry->ip4 = inc->inc_faddr;
	hc_entry->rmx_head = hc_head;
	hc_entry->rmx_expire = V_tcp_hostcache.expire;

	/*
	 * Put it upfront.
	 */
	FUNC3(&hc_head->hch_bucket, hc_entry, rmx_q);
	V_tcp_hostcache.hashbase[hash].hch_length++;
	V_tcp_hostcache.cache_count++;
	FUNC6(tcps_hc_added);

	return hc_entry;
}