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
struct configuration_entry {int perform_actual_lookups; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct configuration_entry* FUNC3 (struct configuration*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct configuration *config,
	const char *entry_name, int flag)
{
	struct configuration_entry *entry;

	FUNC0(set_perform_actual_lookups);
	FUNC2(entry_name != NULL);

	entry = FUNC3(config, entry_name);
	FUNC2(entry != NULL);
	entry->perform_actual_lookups = flag;

	FUNC1(set_perform_actual_lookups);
}