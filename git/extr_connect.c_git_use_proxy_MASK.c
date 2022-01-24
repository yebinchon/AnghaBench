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
 scalar_t__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__* git_proxy_command ; 
 int /*<<< orphan*/  git_proxy_command_options ; 

__attribute__((used)) static int FUNC2(const char *host)
{
	git_proxy_command = FUNC0("GIT_PROXY_COMMAND");
	FUNC1(git_proxy_command_options, (void*)host);
	return (git_proxy_command && *git_proxy_command);
}