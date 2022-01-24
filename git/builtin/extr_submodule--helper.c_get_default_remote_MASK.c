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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static char *FUNC9(void)
{
	char *dest = NULL, *ret;
	struct strbuf sb = STRBUF_INIT;
	const char *refname = FUNC3("HEAD", 0, NULL, NULL);

	if (!refname)
		FUNC1(FUNC0("No such ref: %s"), "HEAD");

	/* detached HEAD */
	if (!FUNC7(refname, "HEAD"))
		return FUNC8("origin");

	if (!FUNC4(refname, "refs/heads/", &refname))
		FUNC1(FUNC0("Expecting a full ref name, got %s"), refname);

	FUNC5(&sb, "branch.%s.remote", refname);
	if (FUNC2(sb.buf, &dest))
		ret = FUNC8("origin");
	else
		ret = dest;

	FUNC6(&sb);
	return ret;
}