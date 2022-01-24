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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(const char *arg)
{
	struct strbuf sb = STRBUF_INIT;
	const char *name;
	int nongit;

	FUNC2(&nongit);
	if (FUNC4(&sb, arg) ||
	    !FUNC3(sb.buf, "refs/heads/", &name))
		FUNC0("'%s' is not a valid branch name", arg);
	FUNC1("%s\n", name);
	FUNC5(&sb);
	return 0;
}