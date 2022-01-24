#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcp_fastopen_ccache_entry {int dummy; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  v; int /*<<< orphan*/  c; } ;
struct TYPE_7__ {scalar_t__ bucket_limit; int buckets; int mask; void* zone; TYPE_1__* base; int /*<<< orphan*/  secret; } ;
struct TYPE_6__ {scalar_t__ newest_psk; scalar_t__ newest; } ;
struct TYPE_5__ {int ccb_num_entries; TYPE_3__* ccb_ccache; int /*<<< orphan*/  ccb_mtx; int /*<<< orphan*/  ccb_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_TCP_FASTOPEN_CCACHE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT ; 
 scalar_t__ TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT ; 
 scalar_t__ TCP_FASTOPEN_MAX_KEYS ; 
 scalar_t__ TCP_FASTOPEN_MAX_PSKS ; 
 int /*<<< orphan*/  UMA_ALIGN_CACHE ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 void* V_counter_zone ; 
 TYPE_4__ V_tcp_fastopen_autokey_ctx ; 
 TYPE_3__ V_tcp_fastopen_ccache ; 
 scalar_t__ V_tcp_fastopen_ccache_buckets ; 
 scalar_t__ V_tcp_fastopen_client_enable ; 
 int /*<<< orphan*/  V_tcp_fastopen_keylock ; 
 TYPE_2__ V_tcp_fastopen_keys ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	unsigned int i;
	
	V_counter_zone = FUNC7("tfo", sizeof(unsigned int),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	FUNC6(&V_tcp_fastopen_keylock, "tfo_keylock");
	FUNC2(&V_tcp_fastopen_autokey_ctx.c,
	    &V_tcp_fastopen_keylock, 0);
	V_tcp_fastopen_autokey_ctx.v = curvnet;
	V_tcp_fastopen_keys.newest = TCP_FASTOPEN_MAX_KEYS - 1;
	V_tcp_fastopen_keys.newest_psk = TCP_FASTOPEN_MAX_PSKS - 1;

	/* May already be non-zero if kernel tunable was set */
	if (V_tcp_fastopen_ccache.bucket_limit == 0)
		V_tcp_fastopen_ccache.bucket_limit =
		    TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT;

	/* May already be non-zero if kernel tunable was set */
	if ((V_tcp_fastopen_ccache_buckets == 0) ||
	    !FUNC5(V_tcp_fastopen_ccache_buckets))
		V_tcp_fastopen_ccache.buckets =
			TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT;
	else
		V_tcp_fastopen_ccache.buckets = V_tcp_fastopen_ccache_buckets;

	V_tcp_fastopen_ccache.mask = V_tcp_fastopen_ccache.buckets - 1;
	V_tcp_fastopen_ccache.secret = FUNC1();

	V_tcp_fastopen_ccache.base = FUNC3(V_tcp_fastopen_ccache.buckets *
	    sizeof(struct tcp_fastopen_ccache_bucket), M_TCP_FASTOPEN_CCACHE,
	    M_WAITOK | M_ZERO);

	for (i = 0; i < V_tcp_fastopen_ccache.buckets; i++) {
		FUNC0(&V_tcp_fastopen_ccache.base[i].ccb_entries);
		FUNC4(&V_tcp_fastopen_ccache.base[i].ccb_mtx, "tfo_ccache_bucket",
			 NULL, MTX_DEF);
		if (V_tcp_fastopen_client_enable) {
			/* enable bucket */
			V_tcp_fastopen_ccache.base[i].ccb_num_entries = 0;
		} else {
			/* disable bucket */
			V_tcp_fastopen_ccache.base[i].ccb_num_entries = -1;
		}
		V_tcp_fastopen_ccache.base[i].ccb_ccache = &V_tcp_fastopen_ccache;
	}

	/*
	 * Note that while the total number of entries in the cookie cache
	 * is limited by the table management logic to
	 * V_tcp_fastopen_ccache.buckets *
	 * V_tcp_fastopen_ccache.bucket_limit, the total number of items in
	 * this zone can exceed that amount by the number of CPUs in the
	 * system times the maximum number of unallocated items that can be
	 * present in each UMA per-CPU cache for this zone.
	 */
	V_tcp_fastopen_ccache.zone = FUNC7("tfo_ccache_entries",
	    sizeof(struct tcp_fastopen_ccache_entry), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_CACHE, 0);
}