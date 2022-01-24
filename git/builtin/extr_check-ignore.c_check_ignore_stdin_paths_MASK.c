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
struct dir_struct {int dummy; } ;
typedef  scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct dir_struct*,char const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ nul_term_line ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dir_struct *dir, const char *prefix)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf unquoted = STRBUF_INIT;
	char *pathspec[2] = { NULL, NULL };
	strbuf_getline_fn getline_fn;
	int num_ignored = 0;

	getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
	while (getline_fn(&buf, stdin) != EOF) {
		if (!nul_term_line && buf.buf[0] == '"') {
			FUNC6(&unquoted);
			if (FUNC8(&unquoted, buf.buf, NULL))
				FUNC1("line is badly quoted");
			FUNC7(&buf, &unquoted);
		}
		pathspec[0] = buf.buf;
		num_ignored += FUNC0(dir, prefix,
					    1, (const char **)pathspec);
		FUNC2(stdout, "check-ignore to stdout");
	}
	FUNC5(&buf);
	FUNC5(&unquoted);
	return num_ignored;
}