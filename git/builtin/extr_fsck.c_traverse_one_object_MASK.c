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
struct tree {int dummy; } ;
struct object {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (struct tree*) ; 
 int FUNC1 (struct object*,struct object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsck_walk_options ; 

__attribute__((used)) static int FUNC2(struct object *obj)
{
	int result = FUNC1(obj, obj, &fsck_walk_options);

	if (obj->type == OBJ_TREE) {
		struct tree *tree = (struct tree *)obj;
		FUNC0(tree);
	}
	return result;
}