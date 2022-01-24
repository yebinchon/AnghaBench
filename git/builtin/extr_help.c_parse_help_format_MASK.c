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
typedef  enum help_format { ____Placeholder_help_format } help_format ;

/* Variables and functions */
 int HELP_FORMAT_INFO ; 
 int HELP_FORMAT_MAN ; 
 int HELP_FORMAT_WEB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum help_format FUNC3(const char *format)
{
	if (!FUNC2(format, "man"))
		return HELP_FORMAT_MAN;
	if (!FUNC2(format, "info"))
		return HELP_FORMAT_INFO;
	if (!FUNC2(format, "web") || !FUNC2(format, "html"))
		return HELP_FORMAT_WEB;
	/*
	 * Please update _git_config() in git-completion.bash when you
	 * add new help formats.
	 */
	FUNC1(FUNC0("unrecognized help format '%s'"), format);
}