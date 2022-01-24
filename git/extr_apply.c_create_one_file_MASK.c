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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct apply_state {scalar_t__ cached; } ;
typedef  int /*<<< orphan*/  newpath ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (struct apply_state*,char*,unsigned int,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct apply_state *state,
			   char *path,
			   unsigned mode,
			   const char *buf,
			   unsigned long size)
{
	int res;

	if (state->cached)
		return 0;

	res = FUNC9(state, path, mode, buf, size);
	if (res < 0)
		return -1;
	if (!res)
		return 0;

	if (errno == ENOENT) {
		if (FUNC8(path))
			return 0;
		res = FUNC9(state, path, mode, buf, size);
		if (res < 0)
			return -1;
		if (!res)
			return 0;
	}

	if (errno == EEXIST || errno == EACCES) {
		/* We may be trying to create a file where a directory
		 * used to be.
		 */
		struct stat st;
		if (!FUNC4(path, &st) && (!FUNC0(st.st_mode) || !FUNC7(path)))
			errno = EEXIST;
	}

	if (errno == EEXIST) {
		unsigned int nr = FUNC3();

		for (;;) {
			char newpath[PATH_MAX];
			FUNC5(newpath, sizeof(newpath), "%s~%u", path, nr);
			res = FUNC9(state, newpath, mode, buf, size);
			if (res < 0)
				return -1;
			if (!res) {
				if (!FUNC6(newpath, path))
					return 0;
				FUNC10(newpath);
				break;
			}
			if (errno != EEXIST)
				break;
			++nr;
		}
	}
	return FUNC2(FUNC1("unable to write file '%s' mode %o"),
			   path, mode);
}