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
struct strbuf {int dummy; } ;
struct commit_graft {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 struct commit_graft* FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct commit_graft*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(const char *graft_file)
{
	FILE *fp = FUNC1(graft_file, "r");
	struct strbuf buf = STRBUF_INIT;
	if (!fp)
		return -1;
	while (!FUNC4(&buf, fp, '\n')) {
		/* The format is just "Commit Parent1 Parent2 ...\n" */
		struct commit_graft *graft = FUNC2(&buf);
		if (graft)
			FUNC3(the_repository, graft, 0);
	}
	FUNC0(fp);
	FUNC5(&buf);
	return 0;
}