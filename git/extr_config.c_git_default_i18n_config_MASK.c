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
 int /*<<< orphan*/  git_commit_encoding ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  git_log_output_encoding ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *var, const char *value)
{
	if (!FUNC1(var, "i18n.commitencoding"))
		return FUNC0(&git_commit_encoding, var, value);

	if (!FUNC1(var, "i18n.logoutputencoding"))
		return FUNC0(&git_log_output_encoding, var, value);

	/* Add other config variables here and to Documentation/config.txt. */
	return 0;
}