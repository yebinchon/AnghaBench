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
struct ref {int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; struct ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct ref *refs, const char *msg)
{
	const struct ref *ref;
	for (ref = refs; ref; ref = ref->next) {
		if (!FUNC2(ref->name, "refs/tags/"))
			continue;
		if (FUNC0(ref->name, "^{}"))
			continue;
		if (!FUNC1(&ref->old_oid))
			continue;
		FUNC3(msg, ref->name, &ref->old_oid, NULL, 0,
			   UPDATE_REFS_DIE_ON_ERR);
	}
}