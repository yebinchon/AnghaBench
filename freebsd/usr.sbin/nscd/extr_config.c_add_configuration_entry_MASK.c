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
struct configuration_entry {int /*<<< orphan*/ * name; } ;
struct configuration {int entries_size; int entries_capacity; struct configuration_entry** entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct configuration*,struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct configuration*,struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct configuration_entry** FUNC3 (int,int) ; 
 int /*<<< orphan*/  configuration_entry_sort_cmp ; 
 int /*<<< orphan*/ * FUNC4 (struct configuration*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct configuration_entry**) ; 
 int /*<<< orphan*/  FUNC6 (struct configuration_entry**,struct configuration_entry**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct configuration_entry**,int,int,int /*<<< orphan*/ ) ; 

int
FUNC8(struct configuration *config,
	struct configuration_entry *entry)
{
	FUNC0(add_configuration_entry);
	FUNC2(entry != NULL);
	FUNC2(entry->name != NULL);
	if (FUNC4(config, entry->name) != NULL) {
		FUNC1(add_configuration_entry);
		return (-1);
	}

	if (config->entries_size == config->entries_capacity) {
		struct configuration_entry **new_entries;

		config->entries_capacity *= 2;
		new_entries = FUNC3(config->entries_capacity,
			sizeof(*new_entries));
		FUNC2(new_entries != NULL);
		FUNC6(new_entries, config->entries,
			sizeof(struct configuration_entry *) *
		        config->entries_size);

		FUNC5(config->entries);
		config->entries = new_entries;
	}

	config->entries[config->entries_size++] = entry;
	FUNC7(config->entries, config->entries_size,
		sizeof(struct configuration_entry *),
		configuration_entry_sort_cmp);

	FUNC1(add_configuration_entry);
	return (0);
}