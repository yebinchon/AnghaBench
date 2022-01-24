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
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 scalar_t__ FUNC6 (char const*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC8 (char*,int,char const*) ; 

__attribute__((used)) static void FUNC9(const char *path, const char *page)
{
	const char *display = FUNC3("DISPLAY");
	if (display && *display) {
		struct strbuf man_page = STRBUF_INIT;
		const char *filename = "kfmclient";

		/* It's simpler to launch konqueror using kfmclient. */
		if (path) {
			size_t len;
			if (FUNC6(path, "/konqueror", &len))
				path = FUNC8("%.*s/kfmclient", (int)len, path);
			filename = FUNC1((char *)path);
		} else
			path = "kfmclient";
		FUNC4(&man_page, "man:%s(1)", page);
		FUNC2(path, filename, "newTab", man_page.buf, (char *)NULL);
		FUNC7(FUNC0("failed to exec '%s'"), path);
		FUNC5(&man_page);
	}
}