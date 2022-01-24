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
struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {TYPE_2__ pending; int /*<<< orphan*/  repo; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  flags; } ;
struct commit {int /*<<< orphan*/  object; } ;
struct TYPE_3__ {char* name; struct object* item; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,int /*<<< orphan*/ *,char*) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct commit *FUNC4(struct rev_info *revs,
					   const char **name_p)
{
	/*
	 * DWIM "git blame --reverse ONE -- PATH" as
	 * "git blame --reverse ONE..HEAD -- PATH" but only do so
	 * when it makes sense.
	 */
	struct object *obj;
	struct commit *head_commit;
	struct object_id head_oid;

	if (revs->pending.nr != 1)
		return NULL;

	/* Is that sole rev a committish? */
	obj = revs->pending.objects[0].item;
	obj = FUNC1(revs->repo, obj, NULL, 0);
	if (obj->type != OBJ_COMMIT)
		return NULL;

	/* Do we have HEAD? */
	if (!FUNC3("HEAD", RESOLVE_REF_READING, &head_oid, NULL))
		return NULL;
	head_commit = FUNC2(revs->repo,
						     &head_oid, 1);
	if (!head_commit)
		return NULL;

	/* Turn "ONE" into "ONE..HEAD" then */
	obj->flags |= UNINTERESTING;
	FUNC0(revs, &head_commit->object, "HEAD");

	if (name_p)
		*name_p = revs->pending.objects[0].name;
	return (struct commit *)obj;
}