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

/* Variables and functions */
 scalar_t__ HIDE_DOTFILES_DOTGITONLY ; 
 scalar_t__ HIDE_DOTFILES_FALSE ; 
 scalar_t__ HIDE_DOTFILES_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ hide_dotfiles ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 

__attribute__((used)) static inline int FUNC4(const char *path)
{
	const char *basename;

	if (hide_dotfiles == HIDE_DOTFILES_FALSE)
		return 0;

	/* We cannot use basename(), as it would remove trailing slashes */
	FUNC3((char **)&path);
	if (!*path)
		return 0;

	for (basename = path; *path; path++)
		if (FUNC1(*path)) {
			do {
				path++;
			} while (FUNC1(*path));
			/* ignore trailing slashes */
			if (*path)
				basename = path;
			else
				break;
		}

	if (hide_dotfiles == HIDE_DOTFILES_TRUE)
		return *basename == '.';

	FUNC0(hide_dotfiles == HIDE_DOTFILES_DOTGITONLY);
	return !FUNC2(".git", basename, 4) &&
		(!basename[4] || FUNC1(basename[4]));
}