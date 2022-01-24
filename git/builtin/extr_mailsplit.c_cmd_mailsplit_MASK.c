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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  git_mailsplit_usage ; 
 int keep_cr ; 
 int mboxrd ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (char const*,char const*,int,int) ; 
 int FUNC6 (char const*,char const*,int,int,int) ; 
 int FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(int argc, const char **argv, const char *prefix)
{
	int nr = 0, nr_prec = 4, num = 0;
	int allow_bare = 0;
	const char *dir = NULL;
	const char **argp;
	static const char *stdin_only[] = { "-", NULL };

	for (argp = argv+1; *argp; argp++) {
		const char *arg = *argp;

		if (arg[0] != '-')
			break;
		/* do flags here */
		if ( arg[1] == 'd' ) {
			nr_prec = FUNC9(arg+2, NULL, 10);
			if (nr_prec < 3 || 10 <= nr_prec)
				FUNC10(git_mailsplit_usage);
			continue;
		} else if ( arg[1] == 'f' ) {
			nr = FUNC9(arg+2, NULL, 10);
		} else if ( arg[1] == 'h' ) {
			FUNC10(git_mailsplit_usage);
		} else if ( arg[1] == 'b' && !arg[2] ) {
			allow_bare = 1;
		} else if (!FUNC8(arg, "--keep-cr")) {
			keep_cr = 1;
		} else if ( arg[1] == 'o' && arg[2] ) {
			dir = arg+2;
		} else if (!FUNC8(arg, "--mboxrd")) {
			mboxrd = 1;
		} else if ( arg[1] == '-' && !arg[2] ) {
			argp++;	/* -- marks end of options */
			break;
		} else {
			FUNC1("unknown option: %s", arg);
		}
	}

	if ( !dir ) {
		/* Backwards compatibility: if no -o specified, accept
		   <mbox> <dir> or just <dir> */
		switch (argc - (argp-argv)) {
		case 1:
			dir = argp[0];
			argp = stdin_only;
			break;
		case 2:
			stdin_only[0] = argp[0];
			dir = argp[1];
			argp = stdin_only;
			break;
		default:
			FUNC10(git_mailsplit_usage);
		}
	} else {
		/* New usage: if no more argument, parse stdin */
		if ( !*argp )
			argp = stdin_only;
	}

	while (*argp) {
		const char *arg = *argp++;
		struct stat argstat;
		int ret = 0;

		if (arg[0] == '-' && arg[1] == 0) {
			ret = FUNC6(arg, dir, allow_bare, nr_prec, nr);
			if (ret < 0) {
				FUNC2("cannot split patches from stdin");
				return 1;
			}
			num += (ret - nr);
			nr = ret;
			continue;
		}

		if (FUNC7(arg, &argstat) == -1) {
			FUNC3("cannot stat %s", arg);
			return 1;
		}

		if (FUNC0(argstat.st_mode))
			ret = FUNC5(arg, dir, nr_prec, nr);
		else
			ret = FUNC6(arg, dir, allow_bare, nr_prec, nr);

		if (ret < 0) {
			FUNC2("cannot split patches from %s", arg);
			return 1;
		}
		num += (ret - nr);
		nr = ret;
	}

	FUNC4("%d\n", num);

	return 0;
}