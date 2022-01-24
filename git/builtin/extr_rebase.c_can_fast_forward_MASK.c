#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct commit_list {TYPE_3__* item; scalar_t__ next; } ;
struct TYPE_4__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_5__ {struct object_id oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_list*) ; 
 struct commit_list* FUNC1 (struct commit*,struct commit*) ; 
 scalar_t__ FUNC2 (struct commit*,struct commit*) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 struct object_id null_oid ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(struct commit *onto, struct commit *upstream,
			    struct commit *restrict_revision,
			    struct object_id *head_oid, struct object_id *merge_base)
{
	struct commit *head = FUNC3(the_repository, head_oid);
	struct commit_list *merge_bases = NULL;
	int res = 0;

	if (!head)
		goto done;

	merge_bases = FUNC1(onto, head);
	if (!merge_bases || merge_bases->next) {
		FUNC4(merge_base, &null_oid);
		goto done;
	}

	FUNC4(merge_base, &merge_bases->item->object.oid);
	if (!FUNC5(merge_base, &onto->object.oid))
		goto done;

	if (restrict_revision && !FUNC5(&restrict_revision->object.oid, merge_base))
		goto done;

	if (!upstream)
		goto done;

	FUNC0(merge_bases);
	merge_bases = FUNC1(upstream, head);
	if (!merge_bases || merge_bases->next)
		goto done;

	if (!FUNC5(&onto->object.oid, &merge_bases->item->object.oid))
		goto done;

	res = 1;

done:
	FUNC0(merge_bases);
	return res && FUNC2(onto, head);
}