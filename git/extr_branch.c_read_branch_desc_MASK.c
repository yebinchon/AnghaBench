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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

int FUNC5(struct strbuf *buf, const char *branch_name)
{
	char *v = NULL;
	struct strbuf name = STRBUF_INIT;
	FUNC2(&name, "branch.%s.description", branch_name);
	if (FUNC1(name.buf, &v)) {
		FUNC4(&name);
		return -1;
	}
	FUNC3(buf, v);
	FUNC0(v);
	FUNC4(&name);
	return 0;
}