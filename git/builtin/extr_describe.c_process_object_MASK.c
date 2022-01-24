#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct process_commit_data {TYPE_1__* revs; TYPE_2__* dst; int /*<<< orphan*/  current_commit; int /*<<< orphan*/  looking_for; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/ * commits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char const*) ; 

__attribute__((used)) static void FUNC5(struct object *obj, const char *path, void *data)
{
	struct process_commit_data *pcd = data;

	if (FUNC2(&pcd->looking_for, &obj->oid) && !pcd->dst->len) {
		FUNC3();
		FUNC0(&pcd->current_commit, pcd->dst);
		FUNC4(pcd->dst, ":%s", path);
		FUNC1(pcd->revs->commits);
		pcd->revs->commits = NULL;
	}
}