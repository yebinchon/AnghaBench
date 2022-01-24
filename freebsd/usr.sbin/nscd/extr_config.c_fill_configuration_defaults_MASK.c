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
struct configuration {int socket_mode; int force_unlink; size_t entries_size; int /*<<< orphan*/ * entries; int /*<<< orphan*/  threads_num; int /*<<< orphan*/  query_timeout; int /*<<< orphan*/ * pidfile_path; int /*<<< orphan*/ * socket_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PIDFILE_PATH ; 
 int /*<<< orphan*/  DEFAULT_QUERY_TIMEOUT ; 
 int /*<<< orphan*/  DEFAULT_SOCKET_PATH ; 
 int /*<<< orphan*/  DEFAULT_THREADS_NUM ; 
 int S_IFSOCK ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct configuration *config)
{
	size_t	len, i;

	FUNC0(fill_configuration_defaults);
	FUNC2(config != NULL);

	if (config->socket_path != NULL)
		FUNC5(config->socket_path);

	len = FUNC7(DEFAULT_SOCKET_PATH);
	config->socket_path = FUNC3(1, len + 1);
	FUNC2(config->socket_path != NULL);
	FUNC6(config->socket_path, DEFAULT_SOCKET_PATH, len);

	len = FUNC7(DEFAULT_PIDFILE_PATH);
	config->pidfile_path = FUNC3(1, len + 1);
	FUNC2(config->pidfile_path != NULL);
	FUNC6(config->pidfile_path, DEFAULT_PIDFILE_PATH, len);

	config->socket_mode =  S_IFSOCK | S_IRUSR | S_IWUSR |
		S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;
	config->force_unlink = 1;

	config->query_timeout = DEFAULT_QUERY_TIMEOUT;
	config->threads_num = DEFAULT_THREADS_NUM;

	for (i = 0; i < config->entries_size; ++i)
		FUNC4(config->entries[i]);
	config->entries_size = 0;

	FUNC1(fill_configuration_defaults);
}