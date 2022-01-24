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
struct object_entry {int dummy; } ;
struct object {int /*<<< orphan*/  oid; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_ADDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_entry*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,struct object_entry*) ; 
 struct object_entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  to_pack ; 
 scalar_t__ use_delta_islands ; 

__attribute__((used)) static void FUNC6(struct object *obj, const char *name, void *data)
{
	FUNC1(name);
	FUNC0(&obj->oid, obj->type, name, 0);
	obj->flags |= OBJECT_ADDED;

	if (use_delta_islands) {
		const char *p;
		unsigned depth;
		struct object_entry *ent;

		/* the empty string is a root tree, which is depth 0 */
		depth = *name ? 1 : 0;
		for (p = FUNC5(name, '/'); p; p = FUNC5(p + 1, '/'))
			depth++;

		ent = FUNC4(&to_pack, &obj->oid);
		if (ent && depth > FUNC3(&to_pack, ent))
			FUNC2(&to_pack, ent, depth);
	}
}