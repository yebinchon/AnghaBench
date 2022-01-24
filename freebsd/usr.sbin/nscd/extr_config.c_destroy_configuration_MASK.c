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
struct configuration {unsigned int entries_size; int /*<<< orphan*/  rwlock; struct configuration* entries; struct configuration* socket_path; struct configuration* pidfile_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct configuration) ; 
 int /*<<< orphan*/  FUNC4 (struct configuration*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct configuration *config)
{
	unsigned int i;

	FUNC0(destroy_configuration);
	FUNC2(config != NULL);
	FUNC4(config->pidfile_path);
	FUNC4(config->socket_path);

	for (i = 0; i < config->entries_size; ++i)
		FUNC3(config->entries[i]);
	FUNC4(config->entries);

	FUNC5(&config->rwlock);
	FUNC4(config);
	FUNC1(destroy_configuration);
}