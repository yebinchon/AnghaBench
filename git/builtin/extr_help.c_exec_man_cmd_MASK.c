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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHELL_PATH ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC5(const char *cmd, const char *page)
{
	struct strbuf shell_cmd = STRBUF_INIT;
	FUNC2(&shell_cmd, "%s %s", cmd, page);
	FUNC1(SHELL_PATH, SHELL_PATH, "-c", shell_cmd.buf, (char *)NULL);
	FUNC4(FUNC0("failed to exec '%s'"), cmd);
	FUNC3(&shell_cmd);
}