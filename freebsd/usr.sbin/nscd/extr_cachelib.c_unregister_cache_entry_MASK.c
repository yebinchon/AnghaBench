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
struct cache_entry_ {int dummy; } ;
struct cache_ {size_t entries_size; struct cache_entry_** entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct cache_*,char const*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct cache_*,char const*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry_*) ; 
 struct cache_entry_** FUNC4 (struct cache_*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry_**,struct cache_entry_**,int) ; 

int
FUNC6(struct cache_ *the_cache, const char *entry_name)
{
	struct cache_entry_ **del_ent;

	FUNC0(unregister_cache_entry);
	FUNC2(the_cache != NULL);

	del_ent = FUNC4(the_cache, entry_name);
	if (del_ent != NULL) {
		FUNC3(*del_ent);
		--the_cache->entries_size;

		FUNC5(del_ent, del_ent + 1,
			(&(the_cache->entries[--the_cache->entries_size]) -
	    		del_ent) * sizeof(struct cache_entry_ *));

		FUNC1(unregister_cache_entry);
		return (0);
	} else {
		FUNC1(unregister_cache_entry);
		return (-1);
	}
}