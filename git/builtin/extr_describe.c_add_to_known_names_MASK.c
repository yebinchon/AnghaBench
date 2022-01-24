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
struct tag {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_name {int prio; int /*<<< orphan*/ * path; int /*<<< orphan*/  oid; scalar_t__ name_checked; struct tag* tag; int /*<<< orphan*/  entry; int /*<<< orphan*/  peeled; } ;

/* Variables and functions */
 struct commit_name* FUNC0 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 scalar_t__ FUNC6 (struct commit_name*,int,struct object_id const*,struct tag**) ; 
 struct commit_name* FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(const char *path,
			       const struct object_id *peeled,
			       int prio,
			       const struct object_id *oid)
{
	struct commit_name *e = FUNC0(peeled);
	struct tag *tag = NULL;
	if (FUNC6(e, prio, oid, &tag)) {
		if (!e) {
			e = FUNC7(sizeof(struct commit_name));
			FUNC4(&e->peeled, peeled);
			FUNC3(&e->entry, FUNC5(peeled));
			FUNC2(&names, &e->entry);
			e->path = NULL;
		}
		e->tag = tag;
		e->prio = prio;
		e->name_checked = 0;
		FUNC4(&e->oid, oid);
		FUNC1(e->path);
		e->path = FUNC8(path);
	}
}