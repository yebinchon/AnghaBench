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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,size_t*,char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 char* FUNC9 (char const*,char*) ; 
 char* FUNC10 (char*,int,char const*) ; 
 char* FUNC11 (char const*,size_t) ; 

__attribute__((used)) static char *FUNC12(const char *repo, int is_bundle, int is_bare)
{
	const char *end = repo + FUNC7(repo), *start, *ptr;
	size_t len;
	char *dir;

	/*
	 * Skip scheme.
	 */
	start = FUNC9(repo, "://");
	if (start == NULL)
		start = repo;
	else
		start += 3;

	/*
	 * Skip authentication data. The stripping does happen
	 * greedily, such that we strip up to the last '@' inside
	 * the host part.
	 */
	for (ptr = start; ptr < end && !FUNC2(*ptr); ptr++) {
		if (*ptr == '@')
			start = ptr + 1;
	}

	/*
	 * Strip trailing spaces, slashes and /.git
	 */
	while (start < end && (FUNC2(end[-1]) || FUNC4(end[-1])))
		end--;
	if (end - start > 5 && FUNC2(end[-5]) &&
	    !FUNC8(end - 4, ".git", 4)) {
		end -= 5;
		while (start < end && FUNC2(end[-1]))
			end--;
	}

	/*
	 * Strip trailing port number if we've got only a
	 * hostname (that is, there is no dir separator but a
	 * colon). This check is required such that we do not
	 * strip URI's like '/foo/bar:2222.git', which should
	 * result in a dir '2222' being guessed due to backwards
	 * compatibility.
	 */
	if (FUNC5(start, '/', end - start) == NULL
	    && FUNC5(start, ':', end - start) != NULL) {
		ptr = end;
		while (start < ptr && FUNC3(ptr[-1]) && ptr[-1] != ':')
			ptr--;
		if (start < ptr && ptr[-1] == ':')
			end = ptr - 1;
	}

	/*
	 * Find last component. To remain backwards compatible we
	 * also regard colons as path separators, such that
	 * cloning a repository 'foo:bar.git' would result in a
	 * directory 'bar' being guessed.
	 */
	ptr = end;
	while (start < ptr && !FUNC2(ptr[-1]) && ptr[-1] != ':')
		ptr--;
	start = ptr;

	/*
	 * Strip .{bundle,git}.
	 */
	len = end - start;
	FUNC6(start, &len, is_bundle ? ".bundle" : ".git");

	if (!len || (len == 1 && *start == '/'))
		FUNC1(FUNC0("No directory name could be guessed.\n"
		      "Please specify a directory on the command line"));

	if (is_bare)
		dir = FUNC10("%.*s.git", (int)len, start);
	else
		dir = FUNC11(start, len);
	/*
	 * Replace sequences of 'control' characters and whitespace
	 * with one ascii space, remove leading and trailing spaces.
	 */
	if (*dir) {
		char *out = dir;
		int prev_space = 1 /* strip leading whitespace */;
		for (end = dir; *end; ++end) {
			char ch = *end;
			if ((unsigned char)ch < '\x20')
				ch = '\x20';
			if (FUNC4(ch)) {
				if (prev_space)
					continue;
				prev_space = 1;
			} else
				prev_space = 0;
			*out++ = ch;
		}
		*out = '\0';
		if (out > dir && prev_space)
			out[-1] = '\0';
	}
	return dir;
}