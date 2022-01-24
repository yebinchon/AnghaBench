#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct storage_entry {scalar_t__ allocationFailures; scalar_t__ used; scalar_t__ size; scalar_t__ allocationUnits; int /*<<< orphan*/ * type; int /*<<< orphan*/  flags; } ;
struct memory_type {int dummy; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  alloc_descr ;

/* Variables and functions */
#define  ALLOCATOR_MALLOC 129 
#define  ALLOCATOR_UMA 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HR_STORAGE_FOUND ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  OIDX_hrStorageRam_c ; 
 int SE_DESC_MLEN ; 
 int FUNC1 (struct memory_type*) ; 
 scalar_t__ FUNC2 (struct memory_type*) ; 
 scalar_t__ FUNC3 (struct memory_type*) ; 
 scalar_t__ FUNC4 (struct memory_type*) ; 
 char* FUNC5 (struct memory_type*) ; 
 scalar_t__ FUNC6 (struct memory_type*) ; 
 scalar_t__ FUNC7 (struct memory_type*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 struct memory_type* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct memory_type* FUNC11 (struct memory_type*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mt_list ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,...) ; 
 struct storage_entry* FUNC15 (char*) ; 
 struct storage_entry* FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(void)
{
	struct memory_type *mt_item;
	struct storage_entry *entry;

	if (mt_list == NULL) {
		if ((mt_list = FUNC8()) == NULL)
			/* again? we have a serious problem */
		return;
	}

	if (FUNC13(mt_list, 0) < 0) {
		FUNC18(LOG_ERR, "memstat_sysctl_all failed: %s",
		    FUNC12(FUNC10(mt_list)) );
		return;
	}

	if ((mt_item = FUNC9(mt_list)) == NULL) {
		/* usually this is not an error, no errno for this failure*/
		FUNC0("memstat_mtl_first failed");
		return;
	}

	do {
		const char *memstat_name;
		uint64_t tmp_size;
		int allocator;
		char alloc_descr[SE_DESC_MLEN];

		memstat_name = FUNC5(mt_item);

		if (memstat_name == NULL || FUNC17(memstat_name) == 0)
			continue;

		switch (allocator = FUNC1(mt_item)) {

		  case ALLOCATOR_MALLOC:
			FUNC14(alloc_descr, sizeof(alloc_descr),
			    "MALLOC: %s", memstat_name);
			break;

		  case ALLOCATOR_UMA:
			FUNC14(alloc_descr, sizeof(alloc_descr),
			    "UMA: %s", memstat_name);
			break;

		  default:
			FUNC14(alloc_descr, sizeof(alloc_descr),
			    "UNKNOWN%d: %s", allocator, memstat_name);
			break;
		}

		if ((entry = FUNC16(alloc_descr)) == NULL &&
		    (entry = FUNC15(alloc_descr)) == NULL)
			return;

		entry->flags |= HR_STORAGE_FOUND;
		entry->type = &OIDX_hrStorageRam_c;

		if ((tmp_size = FUNC6(mt_item)) == 0)
			tmp_size = FUNC7(mt_item);
		entry->allocationUnits =
		    (tmp_size  > INT_MAX ? INT_MAX : (int32_t)tmp_size);

		tmp_size  = FUNC3(mt_item);
		entry->size =
		    (tmp_size  > INT_MAX ? INT_MAX : (int32_t)tmp_size);

		tmp_size = FUNC2(mt_item);
		entry->used =
		    (tmp_size  > INT_MAX ? INT_MAX : (int32_t)tmp_size);

		tmp_size = FUNC4(mt_item);
		entry->allocationFailures =
		    (tmp_size  > INT_MAX ? INT_MAX : (int32_t)tmp_size);

	} while((mt_item = FUNC11(mt_item)) != NULL);
}