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
typedef  int /*<<< orphan*/  uintmax_t ;
struct memory_type_list {int dummy; } ;
struct memory_type {int dummy; } ;

/* Variables and functions */
 int MEMSTAT_ERROR_KVM ; 
 int /*<<< orphan*/  MEMTYPE_MAXNAME ; 
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct memory_type*) ; 
 scalar_t__ FUNC2 (struct memory_type*) ; 
 scalar_t__ FUNC3 (struct memory_type*) ; 
 scalar_t__ FUNC4 (struct memory_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct memory_type*) ; 
 scalar_t__ FUNC6 (struct memory_type*) ; 
 scalar_t__ FUNC7 (struct memory_type*) ; 
 scalar_t__ FUNC8 (struct memory_type*) ; 
 scalar_t__ FUNC9 (struct memory_type*) ; 
 scalar_t__ FUNC10 (struct memory_type_list*,int /*<<< orphan*/ *) ; 
 struct memory_type_list* FUNC11 () ; 
 struct memory_type* FUNC12 (struct memory_type_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct memory_type_list*) ; 
 int FUNC14 (struct memory_type_list*) ; 
 struct memory_type* FUNC15 (struct memory_type*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (struct memory_type_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC29(void)
{
	struct memory_type_list *mtlp;
	struct memory_type *mtp;
	int error;
	char name[MEMTYPE_MAXNAME + 1];

	mtlp = FUNC11();
	if (mtlp == NULL) {
		FUNC27("memstat_mtl_alloc");
		return;
	}
	if (kd == NULL) {
		if (FUNC17(mtlp, 0) < 0) {
			FUNC28("memstat_sysctl_uma: %s",
			    FUNC16(FUNC14(mtlp)));
			return;
		}
	} else {
		if (FUNC10(mtlp, kd) < 0) {
			error = FUNC14(mtlp);
			if (error == MEMSTAT_ERROR_KVM)
				FUNC28("memstat_kvm_uma: %s",
				    FUNC0(kd));
			else
				FUNC28("memstat_kvm_uma: %s",
				    FUNC16(error));
		}
	}
	FUNC24("memory-zone-statistics");
	FUNC23("{T:/%-20s} {T:/%6s} {T:/%6s} {T:/%8s} {T:/%8s} {T:/%8s} {T:/%8s}"
	    "{T:/%4s} {T:/%4s}\n\n", "ITEM", "SIZE",
	    "LIMIT", "USED", "FREE", "REQ", "FAIL", "SLEEP", "XDOMAIN");
	FUNC26("zone");
	for (mtp = FUNC12(mtlp); mtp != NULL;
	    mtp = FUNC15(mtp)) {
		FUNC19(name, FUNC5(mtp), MEMTYPE_MAXNAME);
		FUNC18(name, ":");
		FUNC25("zone");
		FUNC23("{d:name/%-20s}{ke:name/%s} {:size/%6ju}, "
		    "{:limit/%6ju},{:used/%8ju},"
		    "{:free/%8ju},{:requests/%8ju},"
		    "{:fail/%4ju},{:sleep/%4ju},{:xdomain/%4ju}\n", name,
		    FUNC5(mtp),
		    (uintmax_t)FUNC7(mtp),
		    (uintmax_t)FUNC2(mtp),
		    (uintmax_t)FUNC1(mtp),
		    (uintmax_t)FUNC4(mtp),
		    (uintmax_t)FUNC6(mtp),
		    (uintmax_t)FUNC3(mtp),
		    (uintmax_t)FUNC8(mtp),
		    (uintmax_t)FUNC9(mtp));
		FUNC21("zone");
	}
	FUNC13(mtlp);
	FUNC22("zone");
	FUNC20("memory-zone-statistics");
	FUNC23("\n");
}