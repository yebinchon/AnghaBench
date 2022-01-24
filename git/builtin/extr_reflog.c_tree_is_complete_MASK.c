#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tree_desc {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct tree {unsigned long size; TYPE_1__ object; void* buffer; } ;
struct object_id {int dummy; } ;
struct name_entry {struct object_id oid; int /*<<< orphan*/  mode; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int INCOMPLETE ; 
 int SEEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tree*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,void*,unsigned long) ; 
 struct tree* FUNC4 (int /*<<< orphan*/ ,struct object_id const*) ; 
 void* FUNC5 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC6 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static int FUNC7(const struct object_id *oid)
{
	struct tree_desc desc;
	struct name_entry entry;
	int complete;
	struct tree *tree;

	tree = FUNC4(the_repository, oid);
	if (!tree)
		return 0;
	if (tree->object.flags & SEEN)
		return 1;
	if (tree->object.flags & INCOMPLETE)
		return 0;

	if (!tree->buffer) {
		enum object_type type;
		unsigned long size;
		void *data = FUNC5(oid, &type, &size);
		if (!data) {
			tree->object.flags |= INCOMPLETE;
			return 0;
		}
		tree->buffer = data;
		tree->size = size;
	}
	FUNC3(&desc, tree->buffer, tree->size);
	complete = 1;
	while (FUNC6(&desc, &entry)) {
		if (!FUNC2(&entry.oid) ||
		    (FUNC0(entry.mode) && !FUNC7(&entry.oid))) {
			tree->object.flags |= INCOMPLETE;
			complete = 0;
		}
	}
	FUNC1(tree);

	if (complete)
		tree->object.flags |= SEEN;
	return complete;
}