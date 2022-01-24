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
struct TYPE_3__ {int pack_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  counter_mutex ; 
 int /*<<< orphan*/  curr_pack ; 
 int /*<<< orphan*/  deepest_delta_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key ; 
 int nr_threads ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_mutex ; 
 scalar_t__ show_stat ; 
 TYPE_1__* thread_data ; 
 int threads_active ; 
 int /*<<< orphan*/  type_cas_mutex ; 
 int /*<<< orphan*/  work_mutex ; 
 TYPE_1__* FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	int i;
	FUNC2(&read_mutex);
	FUNC5(&counter_mutex, NULL);
	FUNC5(&work_mutex, NULL);
	FUNC5(&type_cas_mutex, NULL);
	if (show_stat)
		FUNC5(&deepest_delta_mutex, NULL);
	FUNC4(&key, NULL);
	thread_data = FUNC6(nr_threads, sizeof(*thread_data));
	for (i = 0; i < nr_threads; i++) {
		thread_data[i].pack_fd = FUNC3(curr_pack, O_RDONLY);
		if (thread_data[i].pack_fd == -1)
			FUNC1(FUNC0("unable to open %s"), curr_pack);
	}

	threads_active = 1;
}