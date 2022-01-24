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
struct timeval {int tv_sec; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_lifetime; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_lifetime; } ;
struct configuration_entry {TYPE_2__ mp_cache_params; TYPE_1__ positive_cache_params; } ;
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
	const char *entry_name, int ttl)
{
	struct configuration_entry *entry;
	struct timeval lifetime;

	FUNC0(set_positive_time_to_live);
	FUNC2(ttl >= 0);
	FUNC2(entry_name != NULL);
	FUNC5(&lifetime, 0, sizeof(struct timeval));
	lifetime.tv_sec = ttl;

	entry = FUNC3(config, entry_name);
	FUNC4(&entry->positive_cache_params.max_lifetime,
		&lifetime, sizeof(struct timeval));
	FUNC4(&entry->mp_cache_params.max_lifetime,
		&lifetime, sizeof(struct timeval));

	FUNC1(set_positive_time_to_live);
}