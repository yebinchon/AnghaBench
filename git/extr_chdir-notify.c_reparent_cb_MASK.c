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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  trace_setup_key ; 

__attribute__((used)) static void FUNC3(const char *name,
			const char *old_cwd,
			const char *new_cwd,
			void *data)
{
	char **path = data;
	char *tmp = *path;

	if (!tmp)
		return;

	*path = FUNC1(old_cwd, new_cwd, tmp);
	FUNC0(tmp);

	if (name) {
		FUNC2(&trace_setup_key,
				 "setup: reparent %s to '%s'",
				 name, *path);
	}
}