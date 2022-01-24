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
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct configuration_entry* (*) (struct configuration*,char const*)) ; 
 int /*<<< orphan*/  FUNC1 (struct configuration_entry* (*) (struct configuration*,char const*)) ; 
 int FUNC2 (struct configuration*,struct configuration_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct configuration_entry* FUNC4 (struct configuration*,char const*) ; 
 struct configuration_entry* FUNC5 (char const*) ; 

__attribute__((used)) static struct configuration_entry *
FUNC6(struct configuration *config,
	const char *entry_name)
{
	struct configuration_entry *entry = NULL;
	int res;

	FUNC0(find_create_entry);
	entry = FUNC4(config, entry_name);
	if (entry == NULL) {
		entry = FUNC5(entry_name);
		FUNC3( entry != NULL);
		res = FUNC2(config, entry);
		FUNC3(res == 0);
	}

	FUNC1(find_create_entry);
	return (entry);
}