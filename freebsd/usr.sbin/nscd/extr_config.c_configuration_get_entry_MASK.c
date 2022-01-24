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
struct configuration {size_t entries_size; struct configuration_entry** entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct configuration_entry* (*) (struct configuration*,size_t)) ; 
 int /*<<< orphan*/  FUNC1 (struct configuration_entry* (*) (struct configuration*,size_t)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

struct configuration_entry *
FUNC3(struct configuration *config, size_t index)
{
	FUNC0(configuration_get_entry);
	FUNC2(config != NULL);
	FUNC2(index < config->entries_size);
	FUNC1(configuration_get_entry);
	return (config->entries[index]);
}