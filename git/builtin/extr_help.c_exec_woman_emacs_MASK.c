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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC6(const char *path, const char *page)
{
	if (!FUNC1()) {
		/* This works only with emacsclient version >= 22. */
		struct strbuf man_page = STRBUF_INIT;

		if (!path)
			path = "emacsclient";
		FUNC3(&man_page, "(woman \"%s\")", page);
		FUNC2(path, "emacsclient", "-e", man_page.buf, (char *)NULL);
		FUNC5(FUNC0("failed to exec '%s'"), path);
		FUNC4(&man_page);
	}
}