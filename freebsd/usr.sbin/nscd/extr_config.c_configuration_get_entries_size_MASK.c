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
struct configuration {size_t entries_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC1 (size_t (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

size_t
FUNC3(struct configuration *config)
{
	FUNC0(configuration_get_entries_size);
	FUNC2(config != NULL);
	FUNC1(configuration_get_entries_size);
	return (config->entries_size);
}