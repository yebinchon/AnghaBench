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
struct configuration_entry {int mp_cache_entries_size; int /*<<< orphan*/ * mp_cache_entries; } ;
typedef  int /*<<< orphan*/  cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct configuration_entry*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct configuration_entry*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configuration_entry_cache_mp_sort_cmp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

int
FUNC7(struct configuration_entry *config_entry,
	cache_entry c_entry)
{
	cache_entry *new_mp_entries, *old_mp_entries;

	FUNC0(configuration_entry_add_mp_cache_entry);
	++config_entry->mp_cache_entries_size;
	new_mp_entries = FUNC4(sizeof(*new_mp_entries) *
		config_entry->mp_cache_entries_size);
	FUNC2(new_mp_entries != NULL);
	new_mp_entries[0] = c_entry;

	if (config_entry->mp_cache_entries_size - 1 > 0) {
		FUNC5(new_mp_entries + 1,
		    config_entry->mp_cache_entries,
		    (config_entry->mp_cache_entries_size - 1) *
		    sizeof(cache_entry));
	}

	old_mp_entries = config_entry->mp_cache_entries;
	config_entry->mp_cache_entries = new_mp_entries;
	FUNC3(old_mp_entries);

	FUNC6(config_entry->mp_cache_entries,
		config_entry->mp_cache_entries_size,
		sizeof(cache_entry),
		configuration_entry_cache_mp_sort_cmp);

	FUNC1(configuration_entry_add_mp_cache_entry);
	return (0);
}