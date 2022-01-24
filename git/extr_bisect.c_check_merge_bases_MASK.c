#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {struct object_id oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*,int) ; 
 int /*<<< orphan*/  current_bad_oid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list*) ; 
 struct commit_list* FUNC4 (struct commit*,int,struct commit**) ; 
 int /*<<< orphan*/  good_revs ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC8 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  skipped_revs ; 

__attribute__((used)) static void FUNC10(int rev_nr, struct commit **rev, int no_checkout)
{
	struct commit_list *result;

	result = FUNC4(rev[0], rev_nr - 1, rev + 1);

	for (; result; result = result->next) {
		const struct object_id *mb = &result->item->object.oid;
		if (FUNC8(mb, current_bad_oid)) {
			FUNC5();
		} else if (0 <= FUNC7(&good_revs, mb)) {
			continue;
		} else if (0 <= FUNC7(&skipped_revs, mb)) {
			FUNC6(mb);
		} else {
			FUNC9(FUNC0("Bisecting: a merge base must be tested\n"));
			FUNC2(FUNC1(mb, no_checkout));
		}
	}

	FUNC3(result);
}