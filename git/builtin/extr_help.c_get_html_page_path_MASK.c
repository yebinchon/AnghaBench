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
struct strbuf {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HTML_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* html_path ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct strbuf *page_path, const char *page)
{
	struct stat st;
	char *to_free = NULL;

	if (!html_path)
		html_path = to_free = FUNC8(GIT_HTML_PATH);

	/* Check that we have a git documentation directory. */
	if (!FUNC7(html_path, "://")) {
		if (FUNC4(FUNC3("%s/git.html", html_path), &st)
		    || !FUNC0(st.st_mode))
			FUNC1("'%s': not a documentation directory.", html_path);
	}

	FUNC6(page_path, 0);
	FUNC5(page_path, "%s/%s.html", html_path, page);
	FUNC2(to_free);
}