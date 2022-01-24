#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  swap_w_prefix ;
struct storage_entry {scalar_t__ allocationFailures; int /*<<< orphan*/  used; int /*<<< orphan*/  size; int /*<<< orphan*/  allocationUnits; int /*<<< orphan*/ * type; int /*<<< orphan*/  flags; } ;
struct kvm_swap {int dummy; } ;
typedef  int /*<<< orphan*/  nswapdev ;
struct TYPE_5__ {int /*<<< orphan*/  ksw_used; int /*<<< orphan*/  ksw_total; int /*<<< orphan*/  ksw_devname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  HR_STORAGE_FOUND ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  OIDX_hrStorageVirtualMemory_c ; 
 int SE_DESC_MLEN ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hr_kd ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 struct storage_entry* FUNC7 (char*) ; 
 struct storage_entry* FUNC8 (char*) ; 
 TYPE_1__* swap_devs ; 
 int swap_devs_len ; 
 scalar_t__ FUNC9 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	struct storage_entry *entry;
	char swap_w_prefix[SE_DESC_MLEN];
	size_t len;
	int nswapdev;

	len = sizeof(nswapdev);
	nswapdev = 0;

	if (FUNC9("vm.nswapdev", &nswapdev, &len, NULL,0 ) < 0) {
		FUNC10(LOG_ERR,
		    "hrStorageTable: sysctlbyname(\"vm.nswapdev\") "
		    "failed. %m");
		FUNC1(0);
		return;
	}

	if (nswapdev <= 0) {
		FUNC0("vm.nswapdev is %d", nswapdev);
		return;
	}

	if (nswapdev + 1 != (int)swap_devs_len || swap_devs == NULL) {
		swap_devs_len = nswapdev + 1;
		swap_devs = FUNC5(swap_devs,
		    swap_devs_len * sizeof(struct kvm_swap));

		FUNC1(swap_devs != NULL);
		if (swap_devs == NULL) {
			swap_devs_len = 0;
			return;
		}
	}

	nswapdev = FUNC3(hr_kd, swap_devs, swap_devs_len, 0);
	if (nswapdev < 0) {
		FUNC10(LOG_ERR,
		    "hrStorageTable: kvm_getswapinfo failed. %m\n");
		FUNC1(0);
		return;
	}

	for (len = 0; len < (size_t)nswapdev; len++) {
		FUNC4(&swap_w_prefix[0], '\0', sizeof(swap_w_prefix));
		FUNC6(swap_w_prefix, sizeof(swap_w_prefix) - 1,
		    "Swap:%s%s", _PATH_DEV, swap_devs[len].ksw_devname);

		entry = FUNC8(swap_w_prefix);
		if (entry == NULL)
			entry = FUNC7(swap_w_prefix);

		FUNC1 (entry != NULL);
		if (entry == NULL)
			return; /* Out of luck */

		entry->flags |= HR_STORAGE_FOUND;
		entry->type = &OIDX_hrStorageVirtualMemory_c;
		entry->allocationUnits = FUNC2();
		entry->size = swap_devs[len].ksw_total;
		entry->used = swap_devs[len].ksw_used;
		entry->allocationFailures = 0;
	}
}