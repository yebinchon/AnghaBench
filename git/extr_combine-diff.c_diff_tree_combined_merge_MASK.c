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
struct rev_info {int dummy; } ;
struct oid_array {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_3__ object; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;

/* Variables and functions */
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct oid_array*,int,struct rev_info*) ; 
 struct commit_list* FUNC1 (struct rev_info*,struct commit const*) ; 
 int /*<<< orphan*/  FUNC2 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*) ; 

void FUNC4(const struct commit *commit, int dense,
			      struct rev_info *rev)
{
	struct commit_list *parent = FUNC1(rev, commit);
	struct oid_array parents = OID_ARRAY_INIT;

	while (parent) {
		FUNC2(&parents, &parent->item->object.oid);
		parent = parent->next;
	}
	FUNC0(&commit->object.oid, &parents, dense, rev);
	FUNC3(&parents);
}