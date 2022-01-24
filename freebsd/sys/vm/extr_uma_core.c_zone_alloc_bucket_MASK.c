#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_bucket_t ;
struct TYPE_10__ {scalar_t__ ub_cnt; int /*<<< orphan*/ * ub_bucket; int /*<<< orphan*/  ub_entries; } ;
struct TYPE_9__ {scalar_t__ (* uz_import ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ;scalar_t__ (* uz_init ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  uz_fails; int /*<<< orphan*/  uz_arg; int /*<<< orphan*/  (* uz_release ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  uz_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  KTR_UMA ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int M_NOVM ; 
 int M_NOWAIT ; 
 int UMA_ANYDOMAIN ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uma_bucket_t
FUNC10(uma_zone_t zone, void *udata, int domain, int flags, int max)
{
	uma_bucket_t bucket;

	FUNC0(KTR_UMA, "zone_alloc:_bucket domain %d)", domain);

	/* Avoid allocs targeting empty domains. */
	if (domain != UMA_ANYDOMAIN && FUNC2(domain))
		domain = UMA_ANYDOMAIN;

	/* Don't wait for buckets, preserve caller's NOVM setting. */
	bucket = FUNC3(zone, udata, M_NOWAIT | (flags & M_NOVM));
	if (bucket == NULL)
		return (NULL);

	bucket->ub_cnt = zone->uz_import(zone->uz_arg, bucket->ub_bucket,
	    FUNC1(max, bucket->ub_entries), domain, flags);

	/*
	 * Initialize the memory if necessary.
	 */
	if (bucket->ub_cnt != 0 && zone->uz_init != NULL) {
		int i;

		for (i = 0; i < bucket->ub_cnt; i++)
			if (zone->uz_init(bucket->ub_bucket[i], zone->uz_size,
			    flags) != 0)
				break;
		/*
		 * If we couldn't initialize the whole bucket, put the
		 * rest back onto the freelist.
		 */
		if (i != bucket->ub_cnt) {
			zone->uz_release(zone->uz_arg, &bucket->ub_bucket[i],
			    bucket->ub_cnt - i);
#ifdef INVARIANTS
			bzero(&bucket->ub_bucket[i],
			    sizeof(void *) * (bucket->ub_cnt - i));
#endif
			bucket->ub_cnt = i;
		}
	}

	if (bucket->ub_cnt == 0) {
		FUNC4(zone, bucket, udata);
		FUNC6(zone->uz_fails, 1);
		return (NULL);
	}

	return (bucket);
}