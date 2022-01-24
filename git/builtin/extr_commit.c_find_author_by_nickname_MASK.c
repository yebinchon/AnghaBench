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
struct string_list {int dummy; } ;
struct strbuf {char* buf; } ;
struct rev_info {struct string_list* mailmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 struct commit* FUNC4 (struct rev_info*) ; 
 scalar_t__ FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char const*) ; 
 char const* FUNC10 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static const char *FUNC12(const char *name)
{
	struct rev_info revs;
	struct commit *commit;
	struct strbuf buf = STRBUF_INIT;
	struct string_list mailmap = STRING_LIST_INIT_NODUP;
	const char *av[20];
	int ac = 0;

	FUNC7(the_repository, &revs, NULL);
	FUNC9(&buf, "--author=%s", name);
	av[++ac] = "--all";
	av[++ac] = "-i";
	av[++ac] = buf.buf;
	av[++ac] = NULL;
	FUNC8(ac, av, &revs, NULL);
	revs.mailmap = &mailmap;
	FUNC6(revs.mailmap, NULL);

	if (FUNC5(&revs))
		FUNC2(FUNC0("revision walk setup failed"));
	commit = FUNC4(&revs);
	if (commit) {
		struct pretty_print_context ctx = {0};
		ctx.date_mode.type = DATE_NORMAL;
		FUNC11(&buf);
		FUNC3(commit, "%aN <%aE>", &buf, &ctx);
		FUNC1(&mailmap);
		return FUNC10(&buf, NULL);
	}
	FUNC2(FUNC0("--author '%s' is not 'Name <email>' and matches no existing author"), name);
}