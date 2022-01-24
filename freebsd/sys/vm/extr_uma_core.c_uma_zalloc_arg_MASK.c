#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_22__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zone ;
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_zone_domain_t ;
typedef  TYPE_3__* uma_cache_t ;
typedef  TYPE_4__* uma_bucket_t ;
struct TYPE_39__ {size_t ub_cnt; int /*<<< orphan*/ ** ub_bucket; } ;
struct TYPE_38__ {TYPE_4__* uc_allocbucket; TYPE_4__* uc_freebucket; int /*<<< orphan*/  uc_allocs; } ;
struct TYPE_37__ {int uzd_imax; } ;
struct TYPE_36__ {scalar_t__ td_critnest; } ;
struct TYPE_35__ {int uz_flags; scalar_t__ (* uz_init ) (void*,int /*<<< orphan*/ ,int) ;scalar_t__ (* uz_ctor ) (void*,int /*<<< orphan*/ ,void*,int) ;scalar_t__ uz_dtor; int uz_count; int uz_count_max; scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; scalar_t__ uz_bkt_count; scalar_t__ uz_bkt_max; TYPE_3__* uz_cpu; int /*<<< orphan*/  uz_name; TYPE_2__* uz_domain; int /*<<< orphan*/  uz_fails; int /*<<< orphan*/  uz_size; int /*<<< orphan*/  (* uz_fini ) (void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_22__*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  KTR_UMA ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int M_EXEC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  RANDOM_UMA ; 
 scalar_t__ FUNC7 () ; 
 int SKIP_CNT ; 
 int SKIP_DTOR ; 
 int UMA_ANYDOMAIN ; 
 int UMA_ZONE_NUMA ; 
 int UMA_ZONE_PCPU ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_4__*,void*) ; 
 scalar_t__ bucketdisable ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int curcpu ; 
 TYPE_22__* curthread ; 
 void* FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (void*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC22 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (void*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC24 (void*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ trash_dtor ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 int FUNC26 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC27 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 TYPE_4__* FUNC29 (TYPE_1__*,void*,int,int,int) ; 
 void* FUNC30 (TYPE_1__*,void*,int,int) ; 
 TYPE_4__* FUNC31 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,TYPE_2__*,TYPE_4__*,int) ; 

void *
FUNC34(uma_zone_t zone, void *udata, int flags)
{
	uma_zone_domain_t zdom;
	uma_bucket_t bucket;
	uma_cache_t cache;
	void *item;
	int cpu, domain, lockfail, maxbucket;
#ifdef INVARIANTS
	bool skipdbg;
#endif

	/* Enable entropy collection for RANDOM_ENABLE_UMA kernel option */
	FUNC19(&zone, sizeof(zone), RANDOM_UMA);

	/* This is the fast path allocation */
	FUNC2(KTR_UMA, "uma_zalloc_arg thread %x zone %s(%p) flags %d",
	    curthread, zone->uz_name, zone, flags);

	if (flags & M_WAITOK) {
		FUNC8(WARN_GIANTOK | WARN_SLEEPOK, NULL,
		    "uma_zalloc_arg: zone \"%s\"", zone->uz_name);
	}
	FUNC3((flags & M_EXEC) == 0, ("uma_zalloc_arg: called with M_EXEC"));
	FUNC3(curthread->td_critnest == 0 || FUNC7(),
	    ("uma_zalloc_arg: called with spinlock or critical section held"));
	if (zone->uz_flags & UMA_ZONE_PCPU)
		FUNC3((flags & M_ZERO) == 0, ("allocating from a pcpu zone "
		    "with M_ZERO passed"));

#ifdef DEBUG_MEMGUARD
	if (memguard_cmp_zone(zone)) {
		item = memguard_alloc(zone->uz_size, flags);
		if (item != NULL) {
			if (zone->uz_init != NULL &&
			    zone->uz_init(item, zone->uz_size, flags) != 0)
				return (NULL);
			if (zone->uz_ctor != NULL &&
			    zone->uz_ctor(item, zone->uz_size, udata,
			    flags) != 0) {
			    	zone->uz_fini(item, zone->uz_size);
				return (NULL);
			}
			return (item);
		}
		/* This is unfortunate but should not be fatal. */
	}
#endif
	/*
	 * If possible, allocate from the per-CPU cache.  There are two
	 * requirements for safe access to the per-CPU cache: (1) the thread
	 * accessing the cache must not be preempted or yield during access,
	 * and (2) the thread must not migrate CPUs without switching which
	 * cache it accesses.  We rely on a critical section to prevent
	 * preemption and migration.  We release the critical section in
	 * order to acquire the zone mutex if we are unable to allocate from
	 * the current cache; when we re-acquire the critical section, we
	 * must detect and handle migration if it has occurred.
	 */
zalloc_restart:
	FUNC15();
	cpu = curcpu;
	cache = &zone->uz_cpu[cpu];

zalloc_start:
	bucket = cache->uc_allocbucket;
	if (bucket != NULL && bucket->ub_cnt > 0) {
		bucket->ub_cnt--;
		item = bucket->ub_bucket[bucket->ub_cnt];
#ifdef INVARIANTS
		bucket->ub_bucket[bucket->ub_cnt] = NULL;
#endif
		FUNC3(item != NULL, ("uma_zalloc: Bucket pointer mangled."));
		cache->uc_allocs++;
		FUNC16();
#ifdef INVARIANTS
		skipdbg = uma_dbg_zskip(zone, item);
#endif
		if (zone->uz_ctor != NULL &&
#ifdef INVARIANTS
		    (!skipdbg || zone->uz_ctor != trash_ctor ||
		    zone->uz_dtor != trash_dtor) &&
#endif
		    zone->uz_ctor(item, zone->uz_size, udata, flags) != 0) {
			FUNC14(zone->uz_fails, 1);
			FUNC32(zone, item, udata, SKIP_DTOR | SKIP_CNT);
			return (NULL);
		}
#ifdef INVARIANTS
		if (!skipdbg)
			uma_dbg_alloc(zone, NULL, item);
#endif
		if (flags & M_ZERO)
			FUNC27(item, zone);
		return (item);
	}

	/*
	 * We have run out of items in our alloc bucket.
	 * See if we can switch with our free bucket.
	 */
	bucket = cache->uc_freebucket;
	if (bucket != NULL && bucket->ub_cnt > 0) {
		FUNC0(KTR_UMA,
		    "uma_zalloc: zone %s(%p) swapping empty with alloc",
		    zone->uz_name, zone);
		cache->uc_freebucket = cache->uc_allocbucket;
		cache->uc_allocbucket = bucket;
		goto zalloc_start;
	}

	/*
	 * Discard any empty allocation bucket while we hold no locks.
	 */
	bucket = cache->uc_allocbucket;
	cache->uc_allocbucket = NULL;
	FUNC16();
	if (bucket != NULL)
		FUNC13(zone, bucket, udata);

	/* Short-circuit for zones without buckets and low memory. */
	if (zone->uz_count == 0 || bucketdisable) {
		FUNC9(zone);
		if (zone->uz_flags & UMA_ZONE_NUMA)
			domain = FUNC6(domain);
		else
			domain = UMA_ANYDOMAIN;
		goto zalloc_item;
	}

	/*
	 * Attempt to retrieve the item from the per-CPU cache has failed, so
	 * we must go back to the zone.  This requires the zone lock, so we
	 * must drop the critical section, then re-acquire it when we go back
	 * to the cache.  Since the critical section is released, we may be
	 * preempted or migrate.  As such, make sure not to maintain any
	 * thread-local state specific to the cache from prior to releasing
	 * the critical section.
	 */
	lockfail = 0;
	if (FUNC10(zone) == 0) {
		/* Record contention to size the buckets. */
		FUNC9(zone);
		lockfail = 1;
	}
	FUNC15();
	cpu = curcpu;
	cache = &zone->uz_cpu[cpu];

	/* See if we lost the race to fill the cache. */
	if (cache->uc_allocbucket != NULL) {
		FUNC11(zone);
		goto zalloc_start;
	}

	/*
	 * Check the zone's cache of buckets.
	 */
	if (zone->uz_flags & UMA_ZONE_NUMA) {
		domain = FUNC6(domain);
		zdom = &zone->uz_domain[domain];
	} else {
		domain = UMA_ANYDOMAIN;
		zdom = &zone->uz_domain[0];
	}

	if ((bucket = FUNC31(zone, zdom)) != NULL) {
		FUNC3(bucket->ub_cnt != 0,
		    ("uma_zalloc_arg: Returning an empty bucket."));
		cache->uc_allocbucket = bucket;
		FUNC11(zone);
		goto zalloc_start;
	}
	/* We are no longer associated with this CPU. */
	FUNC16();

	/*
	 * We bump the uz count when the cache size is insufficient to
	 * handle the working set.
	 */
	if (lockfail && zone->uz_count < zone->uz_count_max)
		zone->uz_count++;

	if (zone->uz_max_items > 0) {
		if (zone->uz_items >= zone->uz_max_items)
			goto zalloc_item;
		maxbucket = FUNC4(zone->uz_count,
		    zone->uz_max_items - zone->uz_items);
		zone->uz_items += maxbucket;
	} else
		maxbucket = zone->uz_count;
	FUNC11(zone);

	/*
	 * Now lets just fill a bucket and put it on the free list.  If that
	 * works we'll restart the allocation from the beginning and it
	 * will use the just filled bucket.
	 */
	bucket = FUNC29(zone, udata, domain, flags, maxbucket);
	FUNC1(KTR_UMA, "uma_zalloc: zone %s(%p) bucket zone returned %p",
	    zone->uz_name, zone, bucket);
	FUNC9(zone);
	if (bucket != NULL) {
		if (zone->uz_max_items > 0 && bucket->ub_cnt < maxbucket) {
			FUNC5(zone->uz_items >= maxbucket - bucket->ub_cnt);
			zone->uz_items -= maxbucket - bucket->ub_cnt;
			if (zone->uz_sleepers > 0 &&
			    zone->uz_items < zone->uz_max_items)
				FUNC28(zone);
		}
		FUNC15();
		cpu = curcpu;
		cache = &zone->uz_cpu[cpu];

		/*
		 * See if we lost the race or were migrated.  Cache the
		 * initialized bucket to make this less likely or claim
		 * the memory directly.
		 */
		if (cache->uc_allocbucket == NULL &&
		    ((zone->uz_flags & UMA_ZONE_NUMA) == 0 ||
		    domain == FUNC6(domain))) {
			cache->uc_allocbucket = bucket;
			zdom->uzd_imax += bucket->ub_cnt;
		} else if (zone->uz_bkt_count >= zone->uz_bkt_max) {
			FUNC16();
			FUNC11(zone);
			FUNC12(zone, bucket);
			FUNC13(zone, bucket, udata);
			goto zalloc_restart;
		} else
			FUNC33(zone, zdom, bucket, false);
		FUNC11(zone);
		goto zalloc_start;
	} else if (zone->uz_max_items > 0) {
		zone->uz_items -= maxbucket;
		if (zone->uz_sleepers > 0 &&
		    zone->uz_items + 1 < zone->uz_max_items)
			FUNC28(zone);
	}

	/*
	 * We may not be able to get a bucket so return an actual item.
	 */
zalloc_item:
	item = FUNC30(zone, udata, domain, flags);

	return (item);
}