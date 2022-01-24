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
struct am_state {int cur; int last; int /*<<< orphan*/  prec; int /*<<< orphan*/  dir; } ;
typedef  int (* mail_conv_fn ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(mail_conv_fn fn, struct am_state *state,
			const char **paths, int keep_cr)
{
	static const char *stdin_only[] = {"-", NULL};
	int i;

	if (!*paths)
		paths = stdin_only;

	for (i = 0; *paths; paths++, i++) {
		FILE *in, *out;
		const char *mail;
		int ret;

		if (!FUNC6(*paths, "-"))
			in = stdin;
		else
			in = FUNC4(*paths, "r");

		if (!in)
			return FUNC2(FUNC0("could not open '%s' for reading"),
					   *paths);

		mail = FUNC5("%s/%0*d", state->dir, state->prec, i + 1);

		out = FUNC4(mail, "w");
		if (!out) {
			if (in != stdin)
				FUNC3(in);
			return FUNC2(FUNC0("could not open '%s' for writing"),
					   mail);
		}

		ret = fn(out, in, keep_cr);

		FUNC3(out);
		if (in != stdin)
			FUNC3(in);

		if (ret)
			return FUNC1(FUNC0("could not parse patch '%s'"), *paths);
	}

	state->cur = 1;
	state->last = i;
	return 0;
}