#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_bucket_t ;
struct TYPE_9__ {int ub_cnt; int /*<<< orphan*/ * ub_bucket; } ;
struct TYPE_8__ {scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int /*<<< orphan*/  uz_arg; int /*<<< orphan*/  (* uz_release ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  uz_size; int /*<<< orphan*/  (* uz_fini ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(uma_zone_t zone, uma_bucket_t bucket)
{
	int i;

	if (bucket == NULL)
		return;

	if (zone->uz_fini)
		for (i = 0; i < bucket->ub_cnt; i++) 
			zone->uz_fini(bucket->ub_bucket[i], zone->uz_size);
	zone->uz_release(zone->uz_arg, bucket->ub_bucket, bucket->ub_cnt);
	if (zone->uz_max_items > 0) {
		FUNC0(zone);
		zone->uz_items -= bucket->ub_cnt;
		if (zone->uz_sleepers && zone->uz_items < zone->uz_max_items)
			FUNC4(zone);
		FUNC1(zone);
	}
	bucket->ub_cnt = 0;
}