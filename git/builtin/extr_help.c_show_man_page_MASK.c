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
struct man_viewer_list {char* name; struct man_viewer_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char*) ; 
 struct man_viewer_list* man_viewer_list ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(const char *git_cmd)
{
	struct man_viewer_list *viewer;
	const char *page = FUNC1(git_cmd);
	const char *fallback = FUNC4("GIT_MAN_VIEWER");

	FUNC5();
	for (viewer = man_viewer_list; viewer; viewer = viewer->next)
	{
		FUNC3(viewer->name, page); /* will return when unable */
	}
	if (fallback)
		FUNC3(fallback, page);
	FUNC3("man", page);
	FUNC2(FUNC0("no man viewer handled the request"));
}