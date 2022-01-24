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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct argv_array {int /*<<< orphan*/  argv; scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_graft_file_deprecated ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char*) ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(int force)
{
	const char *graft_file = FUNC6(the_repository);
	FILE *fp = FUNC5(graft_file, "r");
	struct strbuf buf = STRBUF_INIT, err = STRBUF_INIT;
	struct argv_array args = ARGV_ARRAY_INIT;

	if (!fp)
		return -1;

	advice_graft_file_deprecated = 0;
	while (FUNC8(&buf, fp) != EOF) {
		if (*buf.buf == '#')
			continue;

		FUNC2(&args, buf.buf);
		if (args.argc && FUNC3(args.argc, args.argv, force, 1))
			FUNC7(&err, "\n\t%s", buf.buf);
		FUNC1(&args);
	}
	FUNC4(fp);

	FUNC9(&buf);

	if (!err.len)
		return FUNC10(graft_file);

	FUNC11(FUNC0("could not convert the following graft(s):\n%s"), err.buf);
	FUNC9(&err);

	return -1;
}