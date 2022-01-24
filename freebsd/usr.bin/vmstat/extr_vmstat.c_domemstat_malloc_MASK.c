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
typedef  int uintmax_t ;
struct memory_type_list {int dummy; } ;
struct memory_type {int dummy; } ;

/* Variables and functions */
 int MEMSTAT_ERROR_KVM ; 
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct memory_type*) ; 
 scalar_t__ FUNC2 (struct memory_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct memory_type*) ; 
 scalar_t__ FUNC4 (struct memory_type*) ; 
 int FUNC5 (struct memory_type*) ; 
 scalar_t__ FUNC6 (struct memory_type_list*,int /*<<< orphan*/ *) ; 
 struct memory_type_list* FUNC7 () ; 
 struct memory_type* FUNC8 (struct memory_type_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct memory_type_list*) ; 
 int FUNC10 (struct memory_type_list*) ; 
 struct memory_type* FUNC11 (struct memory_type*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct memory_type_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(void)
{
	struct memory_type_list *mtlp;
	struct memory_type *mtp;
	int error, first, i;

	mtlp = FUNC7();
	if (mtlp == NULL) {
		FUNC21("memstat_mtl_alloc");
		return;
	}
	if (kd == NULL) {
		if (FUNC13(mtlp, 0) < 0) {
			FUNC22("memstat_sysctl_malloc: %s",
			    FUNC12(FUNC10(mtlp)));
			return;
		}
	} else {
		if (FUNC6(mtlp, kd) < 0) {
			error = FUNC10(mtlp);
			if (error == MEMSTAT_ERROR_KVM)
				FUNC22("memstat_kvm_malloc: %s",
				    FUNC0(kd));
			else
				FUNC22("memstat_kvm_malloc: %s",
				    FUNC12(error));
		}
	}
	FUNC18("malloc-statistics");
	FUNC17("{T:/%13s} {T:/%5s} {T:/%6s} {T:/%7s} {T:/%8s}  {T:Size(s)}\n",
	    "Type", "InUse", "MemUse", "HighUse", "Requests");
	FUNC20("memory");
	for (mtp = FUNC8(mtlp); mtp != NULL;
	    mtp = FUNC11(mtp)) {
		if (FUNC4(mtp) == 0 &&
		    FUNC2(mtp) == 0)
			continue;
		FUNC19("memory");
		FUNC17("{k:type/%13s/%s} {:in-use/%5ju} "
		    "{:memory-use/%5ju}{U:K} {:high-use/%7s} "
		    "{:requests/%8ju}  ",
		    FUNC3(mtp), (uintmax_t)FUNC2(mtp),
		    ((uintmax_t)FUNC1(mtp) + 1023) / 1024, "-",
		    (uintmax_t)FUNC4(mtp));
		first = 1;
		FUNC20("size");
		for (i = 0; i < 32; i++) {
			if (FUNC5(mtp) & (1 << i)) {
				if (!first)
					FUNC17(",");
				FUNC17("{l:size/%d}", 1 << (i + 4));
				first = 0;
			}
		}
		FUNC16("size");
		FUNC15("memory");
		FUNC17("\n");
	}
	FUNC16("memory");
	FUNC14("malloc-statistics");
	FUNC9(mtlp);
}