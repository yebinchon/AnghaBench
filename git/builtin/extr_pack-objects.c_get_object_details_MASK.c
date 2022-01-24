#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct object_entry {int no_try_delta; scalar_t__ type_valid; } ;
struct TYPE_3__ {size_t nr_objects; struct object_entry* objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_entry**,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  big_file_threshold ; 
 int /*<<< orphan*/  FUNC2 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct object_entry**) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct object_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pack_offset_sort ; 
 scalar_t__ progress ; 
 int /*<<< orphan*/  progress_state ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__ to_pack ; 
 struct object_entry** FUNC9 (size_t,int) ; 

__attribute__((used)) static void FUNC10(void)
{
	uint32_t i;
	struct object_entry **sorted_by_offset;

	if (progress)
		progress_state = FUNC7(FUNC1("Counting objects"),
						to_pack.nr_objects);

	sorted_by_offset = FUNC9(to_pack.nr_objects, sizeof(struct object_entry *));
	for (i = 0; i < to_pack.nr_objects; i++)
		sorted_by_offset[i] = to_pack.objects + i;
	FUNC0(sorted_by_offset, to_pack.nr_objects, pack_offset_sort);

	for (i = 0; i < to_pack.nr_objects; i++) {
		struct object_entry *entry = sorted_by_offset[i];
		FUNC3(entry);
		if (entry->type_valid &&
		    FUNC6(&to_pack, entry, big_file_threshold))
			entry->no_try_delta = 1;
		FUNC4(progress_state, i + 1);
	}
	FUNC8(&progress_state);

	/*
	 * This must happen in a second pass, since we rely on the delta
	 * information for the whole list being completed.
	 */
	for (i = 0; i < to_pack.nr_objects; i++)
		FUNC2(&to_pack.objects[i]);

	FUNC5(sorted_by_offset);
}