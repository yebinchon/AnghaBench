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
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t nr_dispatched ; 
 size_t nr_objects ; 
 int /*<<< orphan*/  nr_resolved_deltas ; 
 TYPE_1__* objects ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void *FUNC8(void *data)
{
	FUNC5(data);
	for (;;) {
		int i;
		FUNC0();
		FUNC2(progress, nr_resolved_deltas);
		FUNC1();
		FUNC6();
		while (nr_dispatched < nr_objects &&
		       FUNC3(objects[nr_dispatched].type))
			nr_dispatched++;
		if (nr_dispatched >= nr_objects) {
			FUNC7();
			break;
		}
		i = nr_dispatched++;
		FUNC7();

		FUNC4(&objects[i]);
	}
	return NULL;
}