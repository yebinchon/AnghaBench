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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_ADDED ; 
 int /*<<< orphan*/  OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 
 scalar_t__ use_delta_islands ; 
 scalar_t__ write_bitmap_index ; 

__attribute__((used)) static void FUNC3(struct commit *commit, void *data)
{
	FUNC0(&commit->object.oid, OBJ_COMMIT, NULL, 0);
	commit->object.flags |= OBJECT_ADDED;

	if (write_bitmap_index)
		FUNC1(commit);

	if (use_delta_islands)
		FUNC2(commit);
}