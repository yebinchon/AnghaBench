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
struct strbuf {char* buf; } ;
struct pretty_print_context {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char* FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(FILE *fp, char *fmt, const char *state,
		       struct commit *commit)
{
	struct pretty_print_context pp = {0};
	struct strbuf commit_msg = STRBUF_INIT;
	char *label = FUNC5(fmt, state);

	FUNC0(commit, "%s", &commit_msg, &pp);

	FUNC1(fp, "# %s: [%s] %s\n", label, FUNC3(&commit->object.oid),
		commit_msg.buf);

	FUNC4(&commit_msg);
	FUNC2(label);
}