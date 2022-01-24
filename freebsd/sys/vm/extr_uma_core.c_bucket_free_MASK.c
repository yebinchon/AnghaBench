#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_bucket_t ;
struct uma_bucket_zone {int /*<<< orphan*/  ubz_zone; } ;
struct TYPE_7__ {scalar_t__ ub_cnt; int /*<<< orphan*/  ub_entries; } ;
struct TYPE_6__ {int uz_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int UMA_ZFLAG_BUCKET ; 
 struct uma_bucket_zone* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,void*) ; 

__attribute__((used)) static void
FUNC3(uma_zone_t zone, uma_bucket_t bucket, void *udata)
{
	struct uma_bucket_zone *ubz;

	FUNC0(bucket->ub_cnt == 0,
	    ("bucket_free: Freeing a non free bucket."));
	if ((zone->uz_flags & UMA_ZFLAG_BUCKET) == 0)
		udata = (void *)(uintptr_t)zone->uz_flags;
	ubz = FUNC1(bucket->ub_entries);
	FUNC2(ubz->ubz_zone, bucket, udata);
}