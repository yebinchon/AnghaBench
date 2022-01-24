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
typedef  void* u_int ;
struct hc_metrics {int dummy; } ;
struct hc_head {int /*<<< orphan*/  hch_mtx; scalar_t__ hch_length; int /*<<< orphan*/  hch_bucket; } ;
struct TYPE_2__ {int hashsize; int bucket_limit; int prune; int hashmask; int cache_limit; int /*<<< orphan*/  zone; struct hc_head* hashbase; int /*<<< orphan*/  expire; scalar_t__ cache_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_HOSTCACHE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TCP_HOSTCACHE_BUCKETLIMIT ; 
 int /*<<< orphan*/  TCP_HOSTCACHE_EXPIRE ; 
 void* TCP_HOSTCACHE_HASHSIZE ; 
 int TCP_HOSTCACHE_PRUNE ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  V_tcp_hc_callout ; 
 TYPE_1__ V_tcp_hostcache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 int hz ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  tcp_hc_purge ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 

void
FUNC10(void)
{
	u_int cache_limit;
	int i;

	/*
	 * Initialize hostcache structures.
	 */
	V_tcp_hostcache.cache_count = 0;
	V_tcp_hostcache.hashsize = TCP_HOSTCACHE_HASHSIZE;
	V_tcp_hostcache.bucket_limit = TCP_HOSTCACHE_BUCKETLIMIT;
	V_tcp_hostcache.expire = TCP_HOSTCACHE_EXPIRE;
	V_tcp_hostcache.prune = TCP_HOSTCACHE_PRUNE;

	FUNC1("net.inet.tcp.hostcache.hashsize",
	    &V_tcp_hostcache.hashsize);
	if (!FUNC6(V_tcp_hostcache.hashsize)) {
		FUNC7("WARNING: hostcache hash size is not a power of 2.\n");
		V_tcp_hostcache.hashsize = TCP_HOSTCACHE_HASHSIZE; /* default */
	}
	V_tcp_hostcache.hashmask = V_tcp_hostcache.hashsize - 1;

	FUNC1("net.inet.tcp.hostcache.bucketlimit",
	    &V_tcp_hostcache.bucket_limit);

	cache_limit = V_tcp_hostcache.hashsize * V_tcp_hostcache.bucket_limit;
	V_tcp_hostcache.cache_limit = cache_limit;
	FUNC1("net.inet.tcp.hostcache.cachelimit",
	    &V_tcp_hostcache.cache_limit);
	if (V_tcp_hostcache.cache_limit > cache_limit)
		V_tcp_hostcache.cache_limit = cache_limit;

	/*
	 * Allocate the hash table.
	 */
	V_tcp_hostcache.hashbase = (struct hc_head *)
	    FUNC4(V_tcp_hostcache.hashsize * sizeof(struct hc_head),
		   M_HOSTCACHE, M_WAITOK | M_ZERO);

	/*
	 * Initialize the hash buckets.
	 */
	for (i = 0; i < V_tcp_hostcache.hashsize; i++) {
		FUNC0(&V_tcp_hostcache.hashbase[i].hch_bucket);
		V_tcp_hostcache.hashbase[i].hch_length = 0;
		FUNC5(&V_tcp_hostcache.hashbase[i].hch_mtx, "tcp_hc_entry",
			  NULL, MTX_DEF);
	}

	/*
	 * Allocate the hostcache entries.
	 */
	V_tcp_hostcache.zone =
	    FUNC8("hostcache", sizeof(struct hc_metrics),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	FUNC9(V_tcp_hostcache.zone, V_tcp_hostcache.cache_limit);

	/*
	 * Set up periodic cache cleanup.
	 */
	FUNC2(&V_tcp_hc_callout, 1);
	FUNC3(&V_tcp_hc_callout, V_tcp_hostcache.prune * hz,
	    tcp_hc_purge, curvnet);
}