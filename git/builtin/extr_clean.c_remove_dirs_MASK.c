#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int REMOVE_DIR_KEEP_NESTED_GIT ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  msg_remove ; 
 int /*<<< orphan*/  msg_skip_git_dir ; 
 int /*<<< orphan*/  msg_warn_lstat_failed ; 
 int /*<<< orphan*/  msg_warn_remove_failed ; 
 int /*<<< orphan*/  msg_would_remove ; 
 int /*<<< orphan*/  msg_would_skip_git_dir ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,struct strbuf*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct string_list*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct strbuf *path, const char *prefix, int force_flag,
		int dry_run, int quiet, int *dir_gone)
{
	DIR *dir;
	struct strbuf quoted = STRBUF_INIT;
	struct dirent *e;
	int res = 0, ret = 0, gone = 1, original_len = path->len, len;
	struct string_list dels = STRING_LIST_INIT_DUP;

	*dir_gone = 1;

	if ((force_flag & REMOVE_DIR_KEEP_NESTED_GIT) &&
	    FUNC4(path)) {
		if (!quiet) {
			FUNC8(path->buf, prefix, &quoted);
			FUNC7(dry_run ?  FUNC1(msg_would_skip_git_dir) : FUNC1(msg_skip_git_dir),
					quoted.buf);
		}

		*dir_gone = 0;
		goto out;
	}

	dir = FUNC6(path->buf);
	if (!dir) {
		/* an empty dir could be removed even if it is unreadble */
		res = dry_run ? 0 : FUNC10(path->buf);
		if (res) {
			int saved_errno = errno;
			FUNC8(path->buf, prefix, &quoted);
			errno = saved_errno;
			FUNC18(FUNC1(msg_warn_remove_failed), quoted.buf);
			*dir_gone = 0;
		}
		ret = res;
		goto out;
	}

	FUNC12(path, '/');

	len = path->len;
	while ((e = FUNC9(dir)) != NULL) {
		struct stat st;
		if (FUNC3(e->d_name))
			continue;

		FUNC14(path, len);
		FUNC11(path, e->d_name);
		if (FUNC5(path->buf, &st))
			FUNC18(FUNC1(msg_warn_lstat_failed), path->buf);
		else if (FUNC0(st.st_mode)) {
			if (FUNC19(path, prefix, force_flag, dry_run, quiet, &gone))
				ret = 1;
			if (gone) {
				FUNC8(path->buf, prefix, &quoted);
				FUNC15(&dels, quoted.buf);
			} else
				*dir_gone = 0;
			continue;
		} else {
			res = dry_run ? 0 : FUNC17(path->buf);
			if (!res) {
				FUNC8(path->buf, prefix, &quoted);
				FUNC15(&dels, quoted.buf);
			} else {
				int saved_errno = errno;
				FUNC8(path->buf, prefix, &quoted);
				errno = saved_errno;
				FUNC18(FUNC1(msg_warn_remove_failed), quoted.buf);
				*dir_gone = 0;
				ret = 1;
			}
			continue;
		}

		/* path too long, stat fails, or non-directory still exists */
		*dir_gone = 0;
		ret = 1;
		break;
	}
	FUNC2(dir);

	FUNC14(path, original_len);

	if (*dir_gone) {
		res = dry_run ? 0 : FUNC10(path->buf);
		if (!res)
			*dir_gone = 1;
		else {
			int saved_errno = errno;
			FUNC8(path->buf, prefix, &quoted);
			errno = saved_errno;
			FUNC18(FUNC1(msg_warn_remove_failed), quoted.buf);
			*dir_gone = 0;
			ret = 1;
		}
	}

	if (!*dir_gone && !quiet) {
		int i;
		for (i = 0; i < dels.nr; i++)
			FUNC7(dry_run ?  FUNC1(msg_would_remove) : FUNC1(msg_remove), dels.items[i].string);
	}
out:
	FUNC13(&quoted);
	FUNC16(&dels, 0);
	return ret;
}