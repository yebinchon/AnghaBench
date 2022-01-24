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
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  git_mailmap_blob ; 
 int /*<<< orphan*/  git_mailmap_file ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value)
{
	if (!FUNC2(var, "mailmap.file"))
		return FUNC0(&git_mailmap_file, var, value);
	if (!FUNC2(var, "mailmap.blob"))
		return FUNC1(&git_mailmap_blob, var, value);

	/* Add other config variables here and to Documentation/config.txt. */
	return 0;
}