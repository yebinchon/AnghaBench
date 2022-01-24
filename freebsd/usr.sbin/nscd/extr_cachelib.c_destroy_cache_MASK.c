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
struct cache_ {size_t entries_size; struct cache_* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_*) ; 

void
FUNC5(struct cache_ *the_cache)
{

	FUNC0(destroy_cache);
	FUNC2(the_cache != NULL);

	if (the_cache->entries != NULL) {
		size_t i;
		for (i = 0; i < the_cache->entries_size; ++i)
			FUNC3(the_cache->entries[i]);

		FUNC4(the_cache->entries);
	}

	FUNC4(the_cache);
	FUNC1(destroy_cache);
}