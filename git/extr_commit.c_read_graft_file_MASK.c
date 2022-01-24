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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct commit_graft {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_graft_file_deprecated ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 struct commit_graft* FUNC5 (struct strbuf*) ; 
 scalar_t__ FUNC6 (struct repository*,struct commit_graft*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static int FUNC9(struct repository *r, const char *graft_file)
{
	FILE *fp = FUNC4(graft_file, "r");
	struct strbuf buf = STRBUF_INIT;
	if (!fp)
		return -1;
	if (advice_graft_file_deprecated)
		FUNC1(FUNC0("Support for <GIT_DIR>/info/grafts is deprecated\n"
			 "and will be removed in a future Git version.\n"
			 "\n"
			 "Please use \"git replace --convert-graft-file\"\n"
			 "to convert the grafts into replace refs.\n"
			 "\n"
			 "Turn this message off by running\n"
			 "\"git config advice.graftFileDeprecated false\""));
	while (!FUNC7(&buf, fp, '\n')) {
		/* The format is just "Commit Parent1 Parent2 ...\n" */
		struct commit_graft *graft = FUNC5(&buf);
		if (!graft)
			continue;
		if (FUNC6(r, graft, 1))
			FUNC2("duplicate graft data: %s", buf.buf);
	}
	FUNC3(fp);
	FUNC8(&buf);
	return 0;
}