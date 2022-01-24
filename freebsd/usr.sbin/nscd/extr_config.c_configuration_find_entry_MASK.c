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
struct configuration_entry {int dummy; } ;
struct configuration {int /*<<< orphan*/  entries_size; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct configuration_entry* (*) (struct configuration*,char const*)) ; 
 int /*<<< orphan*/  FUNC1 (struct configuration_entry* (*) (struct configuration*,char const*)) ; 
 struct configuration_entry** FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configuration_entry_cmp ; 

struct configuration_entry *
FUNC3(struct configuration *config,
	const char *name)
{
	struct configuration_entry	**retval;

	FUNC0(configuration_find_entry);

	retval = FUNC2(name, config->entries, config->entries_size,
		sizeof(struct configuration_entry *), configuration_entry_cmp);
	FUNC1(configuration_find_entry);

	return ((retval != NULL) ? *retval : NULL);
}