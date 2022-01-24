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
typedef  scalar_t__ uint32_t ;
struct packed_git {scalar_t__ num_objects; int /*<<< orphan*/  mtime; scalar_t__ pack_keep_in_core; scalar_t__ pack_keep; int /*<<< orphan*/  pack_local; struct packed_git* next; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct object_id*,int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*,struct packed_git*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  to_pack ; 

__attribute__((used)) static void FUNC9(void)
{
	struct packed_git *p;
	uint32_t i;
	struct object_id oid;

	for (p = FUNC3(the_repository); p; p = p->next) {
		if (!p->pack_local || p->pack_keep || p->pack_keep_in_core)
			continue;

		if (FUNC7(p))
			FUNC1(FUNC0("cannot open pack index"));

		for (i = 0; i < p->num_objects; i++) {
			FUNC6(&oid, p, i);
			if (!FUNC8(&to_pack, &oid) &&
			    !FUNC4(&oid) &&
			    !FUNC5(&oid, p->mtime))
				if (FUNC2(&oid, p->mtime))
					FUNC1(FUNC0("unable to force loose object"));
		}
	}
}