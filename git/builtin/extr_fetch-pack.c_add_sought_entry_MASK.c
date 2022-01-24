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
struct ref {int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref**,int,int) ; 
 struct ref* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct object_id*,char const**) ; 

__attribute__((used)) static void FUNC5(struct ref ***sought, int *nr, int *alloc,
			     const char *name)
{
	struct ref *ref;
	struct object_id oid;
	const char *p;

	if (!FUNC4(name, &oid, &p)) {
		if (*p == ' ') {
			/* <oid> <ref>, find refname */
			name = p + 1;
		} else if (*p == '\0') {
			; /* <oid>, leave oid as name */
		} else {
			/* <ref>, clear cruft from oid */
			FUNC2(&oid);
		}
	} else {
		/* <ref>, clear cruft from get_oid_hex */
		FUNC2(&oid);
	}

	ref = FUNC1(name);
	FUNC3(&ref->old_oid, &oid);
	(*nr)++;
	FUNC0(*sought, *nr, *alloc);
	(*sought)[*nr - 1] = ref;
}