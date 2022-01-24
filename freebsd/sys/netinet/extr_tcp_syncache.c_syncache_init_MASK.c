#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct syncache_head {int dummy; } ;
struct syncache {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  reseed; int /*<<< orphan*/ * key; } ;
struct TYPE_7__ {int hashsize; int bucket_limit; int hashmask; int cache_limit; int paused; scalar_t__ pause_backoff; scalar_t__ pause_until; int /*<<< orphan*/  pause_mtx; int /*<<< orphan*/  pause_co; TYPE_1__ secret; int /*<<< orphan*/  zone; TYPE_2__* hashbase; int /*<<< orphan*/  vnet; int /*<<< orphan*/  hash_secret; int /*<<< orphan*/  rexmt_limit; } ;
struct TYPE_6__ {int sch_last_overflow; TYPE_3__* sch_sc; scalar_t__ sch_length; int /*<<< orphan*/  sch_mtx; int /*<<< orphan*/  sch_timer; int /*<<< orphan*/  sch_bucket; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_SYNCACHE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SYNCACHE_MAXREXMTS ; 
 int SYNCOOKIE_LIFETIME ; 
 int /*<<< orphan*/  SYNCOOKIE_SECRET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TCP_SYNCACHE_BUCKETLIMIT ; 
 void* TCP_SYNCACHE_HASHSIZE ; 
 scalar_t__ TCP_SYNCACHE_PAUSE_TIME ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 TYPE_3__ V_tcp_syncache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  curvnet ; 
 int hz ; 
 TYPE_2__* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  syncookie_reseed ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 

void
FUNC13(void)
{
	int i;

	V_tcp_syncache.hashsize = TCP_SYNCACHE_HASHSIZE;
	V_tcp_syncache.bucket_limit = TCP_SYNCACHE_BUCKETLIMIT;
	V_tcp_syncache.rexmt_limit = SYNCACHE_MAXREXMTS;
	V_tcp_syncache.hash_secret = FUNC3();

	FUNC1("net.inet.tcp.syncache.hashsize",
	    &V_tcp_syncache.hashsize);
	FUNC1("net.inet.tcp.syncache.bucketlimit",
	    &V_tcp_syncache.bucket_limit);
	if (!FUNC9(V_tcp_syncache.hashsize) ||
	    V_tcp_syncache.hashsize == 0) {
		FUNC10("WARNING: syncache hash size is not a power of 2.\n");
		V_tcp_syncache.hashsize = TCP_SYNCACHE_HASHSIZE;
	}
	V_tcp_syncache.hashmask = V_tcp_syncache.hashsize - 1;

	/* Set limits. */
	V_tcp_syncache.cache_limit =
	    V_tcp_syncache.hashsize * V_tcp_syncache.bucket_limit;
	FUNC1("net.inet.tcp.syncache.cachelimit",
	    &V_tcp_syncache.cache_limit);

	/* Allocate the hash table. */
	V_tcp_syncache.hashbase = FUNC7(V_tcp_syncache.hashsize *
	    sizeof(struct syncache_head), M_SYNCACHE, M_WAITOK | M_ZERO);

#ifdef VIMAGE
	V_tcp_syncache.vnet = curvnet;
#endif

	/* Initialize the hash buckets. */
	for (i = 0; i < V_tcp_syncache.hashsize; i++) {
		FUNC0(&V_tcp_syncache.hashbase[i].sch_bucket);
		FUNC8(&V_tcp_syncache.hashbase[i].sch_mtx, "tcp_sc_head",
			 NULL, MTX_DEF);
		FUNC5(&V_tcp_syncache.hashbase[i].sch_timer,
			 &V_tcp_syncache.hashbase[i].sch_mtx, 0);
		V_tcp_syncache.hashbase[i].sch_length = 0;
		V_tcp_syncache.hashbase[i].sch_sc = &V_tcp_syncache;
		V_tcp_syncache.hashbase[i].sch_last_overflow =
		    -(SYNCOOKIE_LIFETIME + 1);
	}

	/* Create the syncache entry zone. */
	V_tcp_syncache.zone = FUNC11("syncache", sizeof(struct syncache),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	V_tcp_syncache.cache_limit = FUNC12(V_tcp_syncache.zone,
	    V_tcp_syncache.cache_limit);

	/* Start the SYN cookie reseeder callout. */
	FUNC4(&V_tcp_syncache.secret.reseed, 1);
	FUNC2(V_tcp_syncache.secret.key[0], SYNCOOKIE_SECRET_SIZE, 0);
	FUNC2(V_tcp_syncache.secret.key[1], SYNCOOKIE_SECRET_SIZE, 0);
	FUNC6(&V_tcp_syncache.secret.reseed, SYNCOOKIE_LIFETIME * hz,
	    syncookie_reseed, &V_tcp_syncache);

	/* Initialize the pause machinery. */
	FUNC8(&V_tcp_syncache.pause_mtx, "tcp_sc_pause", NULL, MTX_DEF);
	FUNC5(&V_tcp_syncache.pause_co, &V_tcp_syncache.pause_mtx,
	    0);
	V_tcp_syncache.pause_until = time_uptime - TCP_SYNCACHE_PAUSE_TIME;
	V_tcp_syncache.pause_backoff = 0;
	V_tcp_syncache.paused = false;
}