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
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct tag {TYPE_1__* tagged; TYPE_2__ object; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tag* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC6 (struct tag*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  to_pack ; 

__attribute__((used)) static void FUNC7(const struct object_id *oid)
{
	struct tag *tag;

	/*
	 * We catch duplicates already in add_object_entry(), but we'd
	 * prefer to do this extra check to avoid having to parse the
	 * tag at all if we already know that it's being packed (e.g., if
	 * it was included via bitmaps, we would not have parsed it
	 * previously).
	 */
	if (FUNC5(&to_pack, oid))
		return;

	tag = FUNC3(the_repository, oid);
	while (1) {
		if (!tag || FUNC6(tag) || !tag->tagged)
			FUNC2(FUNC0("unable to pack objects reachable from tag %s"),
			    FUNC4(oid));

		FUNC1(&tag->object.oid, OBJ_TAG, NULL, 0);

		if (tag->tagged->type != OBJ_TAG)
			return;

		tag = (struct tag *)tag->tagged;
	}
}