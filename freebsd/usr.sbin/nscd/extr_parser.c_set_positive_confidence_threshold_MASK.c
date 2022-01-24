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
struct TYPE_2__ {int confidence_threshold; } ;
struct configuration_entry {TYPE_1__ positive_cache_params; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct configuration_entry* FUNC3 (struct configuration*,char const*) ; 
 int /*<<< orphan*/  set_positive_conf_thresh ; 

__attribute__((used)) static void
FUNC4(struct configuration *config,
	const char *entry_name, int conf_thresh)
{
	struct configuration_entry *entry;

	FUNC0(set_positive_conf_thresh);
	FUNC2(conf_thresh > 0);
	FUNC2(entry_name != NULL);

	entry = FUNC3(config, entry_name);
	FUNC2(entry != NULL);
	entry->positive_cache_params.confidence_threshold = conf_thresh;

	FUNC1(set_positive_conf_thresh);
}