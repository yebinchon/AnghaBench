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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const**) ; 

__attribute__((used)) static const char *FUNC2(void)
{
	const char *ssh;

	if ((ssh = FUNC0("GIT_SSH_COMMAND")))
		return ssh;

	if (!FUNC1("core.sshcommand", &ssh))
		return ssh;

	return NULL;
}