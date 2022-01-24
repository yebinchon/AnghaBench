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
struct malloc_type_internal {int /*<<< orphan*/  mti_stats; } ;
struct malloc_type {scalar_t__ ks_magic; struct malloc_type* ks_next; struct malloc_type_internal* ks_handle; } ;
struct TYPE_2__ {scalar_t__ v_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ M_MAGIC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  kmemcount ; 
 struct malloc_type* kmemstatistics ; 
 int /*<<< orphan*/  malloc_mtx ; 
 int /*<<< orphan*/  mt_stats_zone ; 
 int /*<<< orphan*/  mt_zone ; 
 int /*<<< orphan*/  FUNC1 (struct malloc_type*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct malloc_type_internal* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ vm_cnt ; 

void
FUNC7(void *data)
{
	struct malloc_type_internal *mtip;
	struct malloc_type *mtp;

	FUNC0(vm_cnt.v_page_count != 0, ("malloc_register before vm_init"));

	mtp = data;
	if (mtp->ks_magic != M_MAGIC)
		FUNC4("malloc_init: bad malloc type magic");

	mtip = FUNC5(mt_zone, M_WAITOK | M_ZERO);
	mtip->mti_stats = FUNC6(mt_stats_zone, M_WAITOK | M_ZERO);
	mtp->ks_handle = mtip;
	FUNC1(mtp);

	FUNC2(&malloc_mtx);
	mtp->ks_next = kmemstatistics;
	kmemstatistics = mtp;
	kmemcount++;
	FUNC3(&malloc_mtx);
}