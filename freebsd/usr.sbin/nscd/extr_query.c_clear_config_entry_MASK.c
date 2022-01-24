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
struct configuration_entry {size_t mp_cache_entries_size; int /*<<< orphan*/ ** mp_cache_entries; int /*<<< orphan*/ * negative_cache_entry; int /*<<< orphan*/ * positive_cache_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  CELT_NEGATIVE ; 
 int /*<<< orphan*/  CELT_POSITIVE ; 
 int /*<<< orphan*/  CTT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC2 (struct configuration_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct configuration_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct configuration_entry *config_entry)
{
	size_t i;

	FUNC0(clear_config_entry);
	FUNC2(config_entry, CELT_POSITIVE);
	if (config_entry->positive_cache_entry != NULL)
		FUNC4(
			config_entry->positive_cache_entry,
			CTT_CLEAR);
	FUNC3(config_entry, CELT_POSITIVE);

	FUNC2(config_entry, CELT_NEGATIVE);
	if (config_entry->negative_cache_entry != NULL)
		FUNC4(
			config_entry->negative_cache_entry,
			CTT_CLEAR);
	FUNC3(config_entry, CELT_NEGATIVE);

	FUNC2(config_entry, CELT_MULTIPART);
	for (i = 0; i < config_entry->mp_cache_entries_size; ++i)
		FUNC4(
			config_entry->mp_cache_entries[i],
			CTT_CLEAR);
	FUNC3(config_entry, CELT_MULTIPART);

	FUNC1(clear_config_entry);
}