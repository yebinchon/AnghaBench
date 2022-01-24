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
struct repository_format {scalar_t__ version; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_GIT_TEMPLATE_DIR ; 
 struct repository_format REPOSITORY_FORMAT_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  TEMPLATE_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository_format*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* init_db_template_dir ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct repository_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,size_t) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct repository_format*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static void FUNC16(const char *template_dir)
{
	struct strbuf path = STRBUF_INIT;
	struct strbuf template_path = STRBUF_INIT;
	size_t template_len;
	struct repository_format template_format = REPOSITORY_FORMAT_INIT;
	struct strbuf err = STRBUF_INIT;
	DIR *dir;
	char *to_free = NULL;

	if (!template_dir)
		template_dir = FUNC6(TEMPLATE_DIR_ENVIRONMENT);
	if (!template_dir)
		template_dir = init_db_template_dir;
	if (!template_dir)
		template_dir = to_free = FUNC13(DEFAULT_GIT_TEMPLATE_DIR);
	if (!template_dir[0]) {
		FUNC4(to_free);
		return;
	}

	FUNC9(&template_path, template_dir);
	FUNC10(&template_path, '/');
	template_len = template_path.len;

	dir = FUNC7(template_path.buf);
	if (!dir) {
		FUNC15(FUNC0("templates not found in %s"), template_dir);
		goto free_return;
	}

	/* Make sure that template is from the correct vintage */
	FUNC9(&template_path, "config");
	FUNC8(&template_format, template_path.buf);
	FUNC12(&template_path, template_len);

	/*
	 * No mention of version at all is OK, but anything else should be
	 * verified.
	 */
	if (template_format.version >= 0 &&
	    FUNC14(&template_format, &err) < 0) {
		FUNC15(FUNC0("not copying templates from '%s': %s"),
			  template_dir, err.buf);
		FUNC11(&err);
		goto close_free_return;
	}

	FUNC9(&path, FUNC5());
	FUNC10(&path, '/');
	FUNC3(&path, &template_path, dir);
close_free_return:
	FUNC2(dir);
free_return:
	FUNC4(to_free);
	FUNC11(&path);
	FUNC11(&template_path);
	FUNC1(&template_format);
}