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
typedef  int uint32_t ;
struct unpacked {int depth; struct unpacked* data; int /*<<< orphan*/  index; struct object_entry* entry; } ;
struct object_entry {unsigned long z_delta_size; scalar_t__ delta_data; scalar_t__ preferred_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct object_entry*) ; 
 scalar_t__ FUNC1 (struct object_entry*) ; 
 scalar_t__ FUNC2 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int OE_Z_DELTA_BITS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct object_entry*,int /*<<< orphan*/ ) ; 
 unsigned long delta_cache_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC8 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct unpacked*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct unpacked*) ; 
 int /*<<< orphan*/  pack_to_stdout ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  progress_state ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct unpacked*,struct unpacked*,int,unsigned long*) ; 
 unsigned long window_memory_limit ; 
 struct unpacked* FUNC15 (int,int) ; 

__attribute__((used)) static void FUNC16(struct object_entry **list, unsigned *list_size,
			int window, int depth, unsigned *processed)
{
	uint32_t i, idx = 0, count = 0;
	struct unpacked *array;
	unsigned long mem_usage = 0;

	array = FUNC15(window, sizeof(struct unpacked));

	for (;;) {
		struct object_entry *entry;
		struct unpacked *n = array + idx;
		int j, max_depth, best_base = -1;

		FUNC12();
		if (!*list_size) {
			FUNC13();
			break;
		}
		entry = *list++;
		(*list_size)--;
		if (!entry->preferred_base) {
			(*processed)++;
			FUNC7(progress_state, *processed);
		}
		FUNC13();

		mem_usage -= FUNC11(n);
		n->entry = entry;

		while (window_memory_limit &&
		       mem_usage > window_memory_limit &&
		       count > 1) {
			const uint32_t tail = (idx + window - count) % window;
			mem_usage -= FUNC11(array + tail);
			count--;
		}

		/* We do not compute delta to *create* objects we are not
		 * going to pack.
		 */
		if (entry->preferred_base)
			goto next;

		/*
		 * If the current object is at pack edge, take the depth the
		 * objects that depend on the current object into account
		 * otherwise they would become too deep.
		 */
		max_depth = depth;
		if (FUNC1(entry)) {
			max_depth -= FUNC6(entry, 0);
			if (max_depth <= 0)
				goto next;
		}

		j = window;
		while (--j > 0) {
			int ret;
			uint32_t other_idx = idx + j;
			struct unpacked *m;
			if (other_idx >= window)
				other_idx -= window;
			m = array + other_idx;
			if (!m->entry)
				break;
			ret = FUNC14(n, m, max_depth, &mem_usage);
			if (ret < 0)
				break;
			else if (ret > 0)
				best_base = other_idx;
		}

		/*
		 * If we decided to cache the delta data, then it is best
		 * to compress it right away.  First because we have to do
		 * it anyway, and doing it here while we're threaded will
		 * save a lot of time in the non threaded write phase,
		 * as well as allow for caching more deltas within
		 * the same cache size limit.
		 * ...
		 * But only if not writing to stdout, since in that case
		 * the network is most likely throttling writes anyway,
		 * and therefore it is best to go to the write phase ASAP
		 * instead, as we can afford spending more time compressing
		 * between writes at that moment.
		 */
		if (entry->delta_data && !pack_to_stdout) {
			unsigned long size;

			size = FUNC8(&entry->delta_data, FUNC2(entry));
			if (size < (1U << OE_Z_DELTA_BITS)) {
				entry->z_delta_size = size;
				FUNC4();
				delta_cache_size -= FUNC2(entry);
				delta_cache_size += entry->z_delta_size;
				FUNC5();
			} else {
				FUNC3(entry->delta_data);
				entry->z_delta_size = 0;
			}
		}

		/* if we made n a delta, and if n is already at max
		 * depth, leaving it in the window is pointless.  we
		 * should evict it first.
		 */
		if (FUNC0(entry) && max_depth <= n->depth)
			continue;

		/*
		 * Move the best delta base up in the window, after the
		 * currently deltified object, to keep it longer.  It will
		 * be the first base object to be attempted next.
		 */
		if (FUNC0(entry)) {
			struct unpacked swap = array[best_base];
			int dist = (window + idx - best_base) % window;
			int dst = best_base;
			while (dist--) {
				int src = (dst + 1) % window;
				array[dst] = array[src];
				dst = src;
			}
			array[dst] = swap;
		}

		next:
		idx++;
		if (count + 1 < window)
			count++;
		if (idx >= window)
			idx = 0;
	}

	for (i = 0; i < window; ++i) {
		FUNC10(array[i].index);
		FUNC9(array[i].data);
	}
	FUNC9(array);
}