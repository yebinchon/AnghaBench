#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_zone_domain_t ;
typedef  TYPE_3__* uma_bucket_t ;
struct TYPE_12__ {scalar_t__ ub_cnt; } ;
struct TYPE_11__ {scalar_t__ uzd_nitems; scalar_t__ uzd_imin; int /*<<< orphan*/  uzd_buckets; } ;
struct TYPE_10__ {int /*<<< orphan*/  uz_bkt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ub_link ; 

__attribute__((used)) static uma_bucket_t
FUNC4(uma_zone_t zone, uma_zone_domain_t zdom)
{
	uma_bucket_t bucket;

	FUNC3(zone);

	if ((bucket = FUNC1(&zdom->uzd_buckets)) != NULL) {
		FUNC0(zdom->uzd_nitems >= bucket->ub_cnt);
		FUNC2(&zdom->uzd_buckets, bucket, ub_link);
		zdom->uzd_nitems -= bucket->ub_cnt;
		if (zdom->uzd_imin > zdom->uzd_nitems)
			zdom->uzd_imin = zdom->uzd_nitems;
		zone->uz_bkt_count -= bucket->ub_cnt;
	}
	return (bucket);
}