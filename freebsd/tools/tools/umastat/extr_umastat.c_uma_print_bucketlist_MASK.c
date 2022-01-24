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
typedef  int /*<<< orphan*/  ub ;
struct uma_bucket {int /*<<< orphan*/  ub_cnt; scalar_t__ ub_entries; } ;
struct bucketlist {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 struct uma_bucket* FUNC0 (struct bucketlist*) ; 
 struct uma_bucket* FUNC1 (struct uma_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct uma_bucket*,struct uma_bucket*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  ub_link ; 
 int /*<<< orphan*/  FUNC6 (struct uma_bucket*,char*) ; 

__attribute__((used)) static void
FUNC7(kvm_t *kvm, struct bucketlist *bucketlist,
    const char *name, const char *spaces)
{
	struct uma_bucket *ubp, ub;
	uint64_t total_entries, total_cnt;
	int count, ret;

	FUNC5("%s%s {", spaces, name);

	total_entries = total_cnt = 0;
	count = 0;
	for (ubp = FUNC0(bucketlist); ubp != NULL; ubp =
	    FUNC1(&ub, ub_link)) {
		ret = FUNC3(kvm, ubp, &ub, sizeof(ub), 0);
		if (ret != 0)
			FUNC2(-1, "uma_print_bucketlist: %s", FUNC4(kvm));
		if (count % 2 == 0)
			FUNC5("\n%s  ", spaces);
		FUNC6(&ub, "");
		FUNC5(" ");
		total_entries += ub.ub_entries;
		total_cnt += ub.ub_cnt;
		count++;
	}

	FUNC5("\n");
	FUNC5("%s};  // total cnt %ju, total entries %ju\n", spaces,
	    total_cnt, total_entries);
}