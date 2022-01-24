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
struct thread_params {int window; int depth; unsigned int* processed; int working; int data_ready; unsigned int list_size; unsigned int remaining; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  thread; struct object_entry** list; } ;
struct object_entry {scalar_t__ hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int delta_search_threads ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct object_entry**,unsigned int*,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_params*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ pack_to_stdout ; 
 scalar_t__ progress ; 
 int /*<<< orphan*/  progress_cond ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  progress_mutex ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread_params*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  threaded_find_deltas ; 
 struct thread_params* FUNC20 (int,int) ; 

__attribute__((used)) static void FUNC21(struct object_entry **list, unsigned list_size,
			   int window, int depth, unsigned *processed)
{
	struct thread_params *p;
	int i, ret, active_threads = 0;

	FUNC6();

	if (delta_search_threads <= 1) {
		FUNC3(list, &list_size, window, depth, processed);
		FUNC1();
		return;
	}
	if (progress > pack_to_stdout)
		FUNC4(stderr, FUNC0("Delta compression using up to %d threads"),
			   delta_search_threads);
	p = FUNC20(delta_search_threads, sizeof(*p));

	/* Partition the work amongst work threads. */
	for (i = 0; i < delta_search_threads; i++) {
		unsigned sub_size = list_size / (delta_search_threads - i);

		/* don't use too small segments or no deltas will be found */
		if (sub_size < 2*window && i+1 < delta_search_threads)
			sub_size = 0;

		p[i].window = window;
		p[i].depth = depth;
		p[i].processed = processed;
		p[i].working = 1;
		p[i].data_ready = 0;

		/* try to split chunks on "path" boundaries */
		while (sub_size && sub_size < list_size &&
		       list[sub_size]->hash &&
		       list[sub_size]->hash == list[sub_size-1]->hash)
			sub_size++;

		p[i].list = list;
		p[i].list_size = sub_size;
		p[i].remaining = sub_size;

		list += sub_size;
		list_size -= sub_size;
	}

	/* Start work threads. */
	for (i = 0; i < delta_search_threads; i++) {
		if (!p[i].list_size)
			continue;
		FUNC16(&p[i].mutex, NULL);
		FUNC10(&p[i].cond, NULL);
		ret = FUNC13(&p[i].thread, NULL,
				     threaded_find_deltas, &p[i]);
		if (ret)
			FUNC2(FUNC0("unable to create thread: %s"), FUNC19(ret));
		active_threads++;
	}

	/*
	 * Now let's wait for work completion.  Each time a thread is done
	 * with its work, we steal half of the remaining work from the
	 * thread with the largest number of unprocessed objects and give
	 * it to that newly idle thread.  This ensure good load balancing
	 * until the remaining object list segments are simply too short
	 * to be worth splitting anymore.
	 */
	while (active_threads) {
		struct thread_params *target = NULL;
		struct thread_params *victim = NULL;
		unsigned sub_size = 0;

		FUNC7();
		for (;;) {
			for (i = 0; !target && i < delta_search_threads; i++)
				if (!p[i].working)
					target = &p[i];
			if (target)
				break;
			FUNC12(&progress_cond, &progress_mutex);
		}

		for (i = 0; i < delta_search_threads; i++)
			if (p[i].remaining > 2*window &&
			    (!victim || victim->remaining < p[i].remaining))
				victim = &p[i];
		if (victim) {
			sub_size = victim->remaining / 2;
			list = victim->list + victim->list_size - sub_size;
			while (sub_size && list[0]->hash &&
			       list[0]->hash == list[-1]->hash) {
				list++;
				sub_size--;
			}
			if (!sub_size) {
				/*
				 * It is possible for some "paths" to have
				 * so many objects that no hash boundary
				 * might be found.  Let's just steal the
				 * exact half in that case.
				 */
				sub_size = victim->remaining / 2;
				list -= sub_size;
			}
			target->list = list;
			victim->list_size -= sub_size;
			victim->remaining -= sub_size;
		}
		target->list_size = sub_size;
		target->remaining = sub_size;
		target->working = 1;
		FUNC8();

		FUNC17(&target->mutex);
		target->data_ready = 1;
		FUNC11(&target->cond);
		FUNC18(&target->mutex);

		if (!sub_size) {
			FUNC14(target->thread, NULL);
			FUNC9(&target->cond);
			FUNC15(&target->mutex);
			active_threads--;
		}
	}
	FUNC1();
	FUNC5(p);
}