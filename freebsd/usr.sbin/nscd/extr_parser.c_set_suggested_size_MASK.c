#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cache_entries_size; } ;
struct TYPE_3__ {int cache_entries_size; } ;
struct configuration_entry {TYPE_2__ negative_cache_params; TYPE_1__ positive_cache_params; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct configuration_entry* FUNC3 (struct configuration*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct configuration *config,
	const char *entry_name, int size)
{
	struct configuration_entry	*entry;

	FUNC0(set_suggested_size);
	FUNC2(config != NULL);
	FUNC2(entry_name != NULL);
	FUNC2(size > 0);

	entry = FUNC3(config, entry_name);
	FUNC2(entry != NULL);
	entry->positive_cache_params.cache_entries_size = size;
	entry->negative_cache_params.cache_entries_size = size;

	FUNC1(set_suggested_size);
}