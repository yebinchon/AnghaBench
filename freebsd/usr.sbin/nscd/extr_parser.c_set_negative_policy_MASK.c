#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int policy; } ;
struct configuration_entry {TYPE_1__ negative_cache_params; } ;
struct configuration {int dummy; } ;
typedef  enum cache_policy_t { ____Placeholder_cache_policy_t } cache_policy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct configuration_entry* FUNC3 (struct configuration*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct configuration *config,
	const char *entry_name, enum cache_policy_t policy)
{
	struct configuration_entry *entry;

	FUNC0(set_negative_policy);
	FUNC2(entry_name != NULL);

	entry = FUNC3(config, entry_name);
	FUNC2(entry != NULL);
	entry->negative_cache_params.policy = policy;

	FUNC1(set_negative_policy);
}