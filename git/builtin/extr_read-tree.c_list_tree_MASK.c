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
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_UNPACK_TREES ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ nr_trees ; 
 struct tree* FUNC1 (struct object_id*) ; 
 struct tree** trees ; 

__attribute__((used)) static int FUNC2(struct object_id *oid)
{
	struct tree *tree;

	if (nr_trees >= MAX_UNPACK_TREES)
		FUNC0("I cannot read more than %d trees", MAX_UNPACK_TREES);
	tree = FUNC1(oid);
	if (!tree)
		return -1;
	trees[nr_trees++] = tree;
	return 0;
}