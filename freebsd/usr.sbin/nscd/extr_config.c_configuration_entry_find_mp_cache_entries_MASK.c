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
 int /*<<< orphan*/  FUNC0 (int (*) (struct configuration_entry*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct configuration_entry*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **)) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ *,int,int,scalar_t__ (*) (char const*,int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC4(
	struct configuration_entry *config_entry, const char *mp_name,
	cache_entry **start, cache_entry **finish)
{
	cache_entry *result;

	FUNC0(configuration_entry_find_mp_cache_entries);
	result = FUNC2(mp_name, config_entry->mp_cache_entries,
		config_entry->mp_cache_entries_size,
		sizeof(cache_entry), configuration_entry_cache_mp_part_cmp);

	if (result == NULL) {
		FUNC1(configuration_entry_find_mp_cache_entries);
		return (-1);
	}

	*start = result;
	*finish = result + 1;

	while (*start != config_entry->mp_cache_entries) {
	    if (FUNC3(mp_name, *start - 1) == 0)
		*start = *start - 1;
	    else
		break;
	}

	while (*finish != config_entry->mp_cache_entries +
		config_entry->mp_cache_entries_size) {

	    if (FUNC3(
		mp_name, *finish) == 0)
	    	*finish = *finish + 1;
	    else
		break;
	}

	FUNC1(configuration_entry_find_mp_cache_entries);
	return (0);
}