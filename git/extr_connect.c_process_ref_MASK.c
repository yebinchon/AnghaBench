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
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct oid_array*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC7 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(const char *line, int len, struct ref ***list,
		       unsigned int flags, struct oid_array *extra_have)
{
	struct object_id old_oid;
	const char *name;

	if (FUNC7(line, &old_oid, &name))
		return 0;
	if (*name != ' ')
		return 0;
	name++;

	if (extra_have && !FUNC8(name, ".have")) {
		FUNC5(extra_have, &old_oid);
	} else if (!FUNC8(name, "capabilities^{}")) {
		FUNC4(FUNC0("protocol error: unexpected capabilities^{}"));
	} else if (FUNC3(name, flags)) {
		struct ref *ref = FUNC1(name);
		FUNC6(&ref->old_oid, &old_oid);
		**list = ref;
		*list = &ref->next;
	}
	FUNC2(line, len);
	return 1;
}