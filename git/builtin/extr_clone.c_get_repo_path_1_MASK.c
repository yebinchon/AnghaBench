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
struct strbuf {size_t len; char const* buf; } ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (int,char*,int) ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

__attribute__((used)) static const char *FUNC12(struct strbuf *path, int *is_bundle)
{
	static char *suffix[] = { "/.git", "", ".git/.git", ".git" };
	static char *bundle_suffix[] = { ".bundle", "" };
	size_t baselen = path->len;
	struct stat st;
	int i;

	for (i = 0; i < FUNC0(suffix); i++) {
		FUNC10(path, baselen);
		FUNC9(path, suffix[i]);
		if (FUNC8(path->buf, &st))
			continue;
		if (FUNC1(st.st_mode) && FUNC4(path->buf)) {
			*is_bundle = 0;
			return path->buf;
		} else if (FUNC2(st.st_mode) && st.st_size > 8) {
			/* Is it a "gitfile"? */
			char signature[8];
			const char *dst;
			int len, fd = FUNC5(path->buf, O_RDONLY);
			if (fd < 0)
				continue;
			len = FUNC7(fd, signature, 8);
			FUNC3(fd);
			if (len != 8 || FUNC11(signature, "gitdir: ", 8))
				continue;
			dst = FUNC6(path->buf);
			if (dst) {
				*is_bundle = 0;
				return dst;
			}
		}
	}

	for (i = 0; i < FUNC0(bundle_suffix); i++) {
		FUNC10(path, baselen);
		FUNC9(path, bundle_suffix[i]);
		if (!FUNC8(path->buf, &st) && FUNC2(st.st_mode)) {
			*is_bundle = 1;
			return path->buf;
		}
	}

	return NULL;
}