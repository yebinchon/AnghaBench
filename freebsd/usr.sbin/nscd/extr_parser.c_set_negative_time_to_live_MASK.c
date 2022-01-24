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
struct timeval {int tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_lifetime; } ;
struct configuration_entry {TYPE_1__ negative_cache_params; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*,char const*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct configuration_entry* FUNC3 (struct configuration*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct configuration *config,
	const char *entry_name, int nttl)
{
	struct configuration_entry *entry;
	struct timeval lifetime;

	FUNC0(set_negative_time_to_live);
	FUNC2(nttl > 0);
	FUNC2(entry_name != NULL);
	FUNC5(&lifetime, 0, sizeof(struct timeval));
	lifetime.tv_sec = nttl;

	entry = FUNC3(config, entry_name);
	FUNC2(entry != NULL);
	FUNC4(&entry->negative_cache_params.max_lifetime,
		&lifetime, sizeof(struct timeval));

	FUNC1(set_negative_time_to_live);
}