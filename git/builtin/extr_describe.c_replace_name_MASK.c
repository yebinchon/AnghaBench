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
struct tag {scalar_t__ date; } ;
struct object_id {int dummy; } ;
struct commit_name {int prio; struct tag* tag; struct object_id const oid; } ;

/* Variables and functions */
 struct tag* FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC1 (struct tag*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(struct commit_name *e,
			       int prio,
			       const struct object_id *oid,
			       struct tag **tag)
{
	if (!e || e->prio < prio)
		return 1;

	if (e->prio == 2 && prio == 2) {
		/* Multiple annotated tags point to the same commit.
		 * Select one to keep based upon their tagger date.
		 */
		struct tag *t;

		if (!e->tag) {
			t = FUNC0(the_repository, &e->oid);
			if (!t || FUNC1(t))
				return 1;
			e->tag = t;
		}

		t = FUNC0(the_repository, oid);
		if (!t || FUNC1(t))
			return 0;
		*tag = t;

		if (e->tag->date < t->date)
			return 1;
	}

	return 0;
}