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
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int GIT_COLOR_AUTO ; 
 int FUNC2 (int) ; 
 int git_use_color_default ; 

int FUNC3(int fd, int var)
{
	/*
	 * NEEDSWORK: This function is sometimes used from multiple threads, and
	 * we end up using want_auto racily. That "should not matter" since
	 * we always write the same value, but it's still wrong. This function
	 * is listed in .tsan-suppressions for the time being.
	 */

	static int want_auto[3] = { -1, -1, -1 };

	if (fd < 1 || fd >= FUNC0(want_auto))
		FUNC1("file descriptor out of range: %d", fd);

	if (var < 0)
		var = git_use_color_default;

	if (var == GIT_COLOR_AUTO) {
		if (want_auto[fd] < 0)
			want_auto[fd] = FUNC2(fd);
		return want_auto[fd];
	}
	return var;
}