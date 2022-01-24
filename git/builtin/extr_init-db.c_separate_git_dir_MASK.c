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
struct stat {scalar_t__ st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,char const*) ; 

__attribute__((used)) static void FUNC9(const char *git_dir, const char *git_link)
{
	struct stat st;

	if (!FUNC7(git_link, &st)) {
		const char *src;

		if (FUNC1(st.st_mode))
			src = FUNC5(git_link);
		else if (FUNC0(st.st_mode))
			src = git_link;
		else
			FUNC3(FUNC2("unable to handle file type %d"), (int)st.st_mode);

		if (FUNC6(src, git_dir))
			FUNC4(FUNC2("unable to move %s to %s"), src, git_dir);
	}

	FUNC8(git_link, "gitdir: %s", git_dir);
}