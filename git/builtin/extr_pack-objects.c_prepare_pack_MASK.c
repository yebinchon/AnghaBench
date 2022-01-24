#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; int /*<<< orphan*/  preferred_base; scalar_t__ no_try_delta; int /*<<< orphan*/  type_valid; } ;
struct TYPE_6__ {scalar_t__ nr_objects; struct object_entry* objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_entry**,scalar_t__) ; 
 scalar_t__ FUNC1 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_entry**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int do_check_packed_object_crc ; 
 int /*<<< orphan*/  FUNC5 (struct object_entry**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct object_entry**,unsigned int,int,int,unsigned int*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct object_entry*,int) ; 
 scalar_t__ FUNC9 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pack_to_stdout ; 
 scalar_t__ progress ; 
 int /*<<< orphan*/  progress_state ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 TYPE_2__ to_pack ; 
 int /*<<< orphan*/  type_size_sort ; 
 scalar_t__ use_delta_islands ; 

__attribute__((used)) static void FUNC14(int window, int depth)
{
	struct object_entry **delta_list;
	uint32_t i, nr_deltas;
	unsigned n;

	if (use_delta_islands)
		FUNC11(the_repository, progress, &to_pack);

	FUNC6();

	/*
	 * If we're locally repacking then we need to be doubly careful
	 * from now on in order to make sure no stealth corruption gets
	 * propagated to the new pack.  Clients receiving streamed packs
	 * should validate everything they get anyway so no need to incur
	 * the additional cost here in that case.
	 */
	if (!pack_to_stdout)
		do_check_packed_object_crc = 1;

	if (!to_pack.nr_objects || !window || !depth)
		return;

	FUNC0(delta_list, to_pack.nr_objects);
	nr_deltas = n = 0;

	for (i = 0; i < to_pack.nr_objects; i++) {
		struct object_entry *entry = to_pack.objects + i;

		if (FUNC1(entry))
			/* This happens if we decided to reuse existing
			 * delta from a pack.  "reuse_delta &&" is implied.
			 */
			continue;

		if (!entry->type_valid ||
		    FUNC8(&to_pack, entry, 50))
			continue;

		if (entry->no_try_delta)
			continue;

		if (!entry->preferred_base) {
			nr_deltas++;
			if (FUNC9(entry) < 0)
				FUNC4(FUNC3("unable to get type of object %s"),
				    FUNC10(&entry->idx.oid));
		} else {
			if (FUNC9(entry) < 0) {
				/*
				 * This object is not found, but we
				 * don't have to include it anyway.
				 */
				continue;
			}
		}

		delta_list[n++] = entry;
	}

	if (nr_deltas && n > 1) {
		unsigned nr_done = 0;
		if (progress)
			progress_state = FUNC12(FUNC3("Compressing objects"),
							nr_deltas);
		FUNC2(delta_list, n, type_size_sort);
		FUNC7(delta_list, n, window+1, depth, &nr_done);
		FUNC13(&progress_state);
		if (nr_done != nr_deltas)
			FUNC4(FUNC3("inconsistency with delta count"));
	}
	FUNC5(delta_list);
}