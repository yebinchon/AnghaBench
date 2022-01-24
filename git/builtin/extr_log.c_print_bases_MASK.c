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
struct base_tree_info {int nr_patch_id; int /*<<< orphan*/  base_commit; scalar_t__ alloc_patch_id; int /*<<< orphan*/ * patch_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct base_tree_info *bases, FILE *file)
{
	int i;

	/* Only do this once, either for the cover or for the first one */
	if (FUNC2(&bases->base_commit))
		return;

	/* Show the base commit */
	FUNC0(file, "\nbase-commit: %s\n", FUNC3(&bases->base_commit));

	/* Show the prerequisite patches */
	for (i = bases->nr_patch_id - 1; i >= 0; i--)
		FUNC0(file, "prerequisite-patch-id: %s\n", FUNC3(&bases->patch_id[i]));

	FUNC1(bases->patch_id);
	bases->nr_patch_id = 0;
	bases->alloc_patch_id = 0;
	FUNC4(&bases->base_commit);
}