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
struct configuration_entry {int enabled; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*,char const*,int)) ; 
 struct configuration_entry* FUNC2 (struct configuration*,char const*) ; 

__attribute__((used)) static void
FUNC3(struct configuration *config, const char *entry_name, int flag)
{
	struct configuration_entry	*entry;

	FUNC0(enable_cache);
	entry = FUNC2(config, entry_name);
	entry->enabled = flag;
	FUNC1(enable_cache);
}