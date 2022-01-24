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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
struct patch {scalar_t__ crlf_in_old; } ;

/* Variables and functions */
 int CONV_EOL_KEEP_CRLF ; 
 int CONV_EOL_RENORMALIZE ; 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct stat *st, struct patch *patch,
			 const char *path, struct strbuf *buf)
{
	int conv_flags = patch->crlf_in_old ?
		CONV_EOL_KEEP_CRLF : CONV_EOL_RENORMALIZE;
	switch (st->st_mode & S_IFMT) {
	case S_IFLNK:
		if (FUNC4(buf, path, st->st_size) < 0)
			return FUNC2(FUNC0("unable to read symlink %s"), path);
		return 0;
	case S_IFREG:
		if (FUNC3(buf, path, st->st_size) != st->st_size)
			return FUNC2(FUNC0("unable to open or read %s"), path);
		/*
		 * "git apply" without "--index/--cached" should never look
		 * at the index; the target file may not have been added to
		 * the index yet, and we may not even be in any Git repository.
		 * Pass NULL to convert_to_git() to stress this; the function
		 * should never look at the index when explicit crlf option
		 * is given.
		 */
		FUNC1(NULL, path, buf->buf, buf->len, buf, conv_flags);
		return 0;
	default:
		return -1;
	}
}