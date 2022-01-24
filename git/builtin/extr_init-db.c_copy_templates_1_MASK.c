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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char*) ; 
 scalar_t__ FUNC14 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct strbuf *path, struct strbuf *template_path,
			     DIR *dir)
{
	size_t path_baselen = path->len;
	size_t template_baselen = template_path->len;
	struct dirent *de;

	/* Note: if ".git/hooks" file exists in the repository being
	 * re-initialized, /etc/core-git/templates/hooks/update would
	 * cause "git init" to fail here.  I think this is sane but
	 * it means that the set of templates we ship by default, along
	 * with the way the namespace under .git/ is organized, should
	 * be really carefully chosen.
	 */
	FUNC11(path->buf, 1);
	while ((de = FUNC10(dir)) != NULL) {
		struct stat st_git, st_template;
		int exists = 0;

		FUNC16(path, path_baselen);
		FUNC16(template_path, template_baselen);

		if (de->d_name[0] == '.')
			continue;
		FUNC13(path, de->d_name);
		FUNC13(template_path, de->d_name);
		if (FUNC8(path->buf, &st_git)) {
			if (errno != ENOENT)
				FUNC6(FUNC3("cannot stat '%s'"), path->buf);
		}
		else
			exists = 1;

		if (FUNC8(template_path->buf, &st_template))
			FUNC6(FUNC3("cannot stat template '%s'"), template_path->buf);

		if (FUNC0(st_template.st_mode)) {
			DIR *subdir = FUNC9(template_path->buf);
			if (!subdir)
				FUNC6(FUNC3("cannot opendir '%s'"), template_path->buf);
			FUNC12(path, '/');
			FUNC12(template_path, '/');
			FUNC18(path, template_path, subdir);
			FUNC4(subdir);
		}
		else if (exists)
			continue;
		else if (FUNC1(st_template.st_mode)) {
			struct strbuf lnk = STRBUF_INIT;
			if (FUNC14(&lnk, template_path->buf,
					    st_template.st_size) < 0)
				FUNC6(FUNC3("cannot readlink '%s'"), template_path->buf);
			if (FUNC17(lnk.buf, path->buf))
				FUNC6(FUNC3("cannot symlink '%s' '%s'"),
					  lnk.buf, path->buf);
			FUNC15(&lnk);
		}
		else if (FUNC2(st_template.st_mode)) {
			if (FUNC5(path->buf, template_path->buf, st_template.st_mode))
				FUNC6(FUNC3("cannot copy '%s' to '%s'"),
					  template_path->buf, path->buf);
		}
		else
			FUNC7(FUNC3("ignoring template %s"), template_path->buf);
	}
}