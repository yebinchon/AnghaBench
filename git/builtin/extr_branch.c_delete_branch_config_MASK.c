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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *branchname)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC2(&buf, "branch.%s", branchname);
	if (FUNC1(buf.buf, NULL) < 0)
		FUNC4(FUNC0("Update of config-file failed"));
	FUNC3(&buf);
}