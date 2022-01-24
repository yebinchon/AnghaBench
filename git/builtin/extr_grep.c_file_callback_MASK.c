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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct option {struct grep_opt* value; } ;
struct grep_opt {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GREP_PATTERN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*,int /*<<< orphan*/ ,scalar_t__,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(const struct option *opt, const char *arg, int unset)
{
	struct grep_opt *grep_opt = opt->value;
	int from_stdin;
	FILE *patterns;
	int lno = 0;
	struct strbuf sb = STRBUF_INIT;

	FUNC0(unset);

	from_stdin = !FUNC8(arg, "-");
	patterns = from_stdin ? stdin : FUNC5(arg, "r");
	if (!patterns)
		FUNC3(FUNC1("cannot open '%s'"), arg);
	while (FUNC6(&sb, patterns) == 0) {
		/* ignore empty line like grep does */
		if (sb.len == 0)
			continue;

		FUNC2(grep_opt, sb.buf, sb.len, arg, ++lno,
				GREP_PATTERN);
	}
	if (!from_stdin)
		FUNC4(patterns);
	FUNC7(&sb);
	return 0;
}