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
struct strbuf {char* buf; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
struct am_state {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct am_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stgit_patch_to_mail ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 char* FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(struct am_state *state, const char **paths,
					int keep_cr)
{
	const char *series_dir;
	char *series_dir_buf;
	FILE *fp;
	struct argv_array patches = ARGV_ARRAY_INIT;
	struct strbuf sb = STRBUF_INIT;
	int ret;

	if (!paths[0] || paths[1])
		return FUNC4(FUNC0("Only one StGIT patch series can be applied at once"));

	series_dir_buf = FUNC13(*paths);
	series_dir = FUNC3(series_dir_buf);

	fp = FUNC7(*paths, "r");
	if (!fp)
		return FUNC5(FUNC0("could not open '%s' for reading"), *paths);

	while (!FUNC11(&sb, fp)) {
		if (*sb.buf == '#')
			continue; /* skip comment lines */

		FUNC2(&patches, FUNC9("%s/%s", series_dir, sb.buf));
	}

	FUNC6(fp);
	FUNC12(&sb);
	FUNC8(series_dir_buf);

	ret = FUNC10(stgit_patch_to_mail, state, patches.argv, keep_cr);

	FUNC1(&patches);
	return ret;
}