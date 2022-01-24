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
struct object_entry {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  compare_ofs_delta_entry ; 
 int /*<<< orphan*/  compare_ref_delta_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ nr_dispatched ; 
 int nr_objects ; 
 scalar_t__ nr_ofs_deltas ; 
 scalar_t__ nr_ref_deltas ; 
 int /*<<< orphan*/  nr_resolved_deltas ; 
 int nr_threads ; 
 struct object_entry* objects ; 
 int /*<<< orphan*/  ofs_deltas ; 
 int /*<<< orphan*/  progress ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_deltas ; 
 int /*<<< orphan*/  FUNC10 (struct object_entry*) ; 
 scalar_t__ show_resolving_progress ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 TYPE_1__* thread_data ; 
 int /*<<< orphan*/  threaded_second_pass ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC13(void)
{
	int i;

	if (!nr_ofs_deltas && !nr_ref_deltas)
		return;

	/* Sort deltas by base SHA1/offset for fast searching */
	FUNC0(ofs_deltas, nr_ofs_deltas, compare_ofs_delta_entry);
	FUNC0(ref_deltas, nr_ref_deltas, compare_ref_delta_entry);

	if (verbose || show_resolving_progress)
		progress = FUNC11(FUNC1("Resolving deltas"),
					  nr_ref_deltas + nr_ofs_deltas);

	nr_dispatched = 0;
	if (nr_threads > 1 || FUNC5("GIT_FORCE_THREADS")) {
		FUNC6();
		for (i = 0; i < nr_threads; i++) {
			int ret = FUNC8(&thread_data[i].thread, NULL,
						 threaded_second_pass, thread_data + i);
			if (ret)
				FUNC3(FUNC1("unable to create thread: %s"),
				    FUNC12(ret));
		}
		for (i = 0; i < nr_threads; i++)
			FUNC9(thread_data[i].thread, NULL);
		FUNC2();
		return;
	}

	for (i = 0; i < nr_objects; i++) {
		struct object_entry *obj = &objects[i];

		if (FUNC7(obj->type))
			continue;
		FUNC10(obj);
		FUNC4(progress, nr_resolved_deltas);
	}
}