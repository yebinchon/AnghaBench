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
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  o_request; } ;

/* Variables and functions */
 int MAXLINE ; 
 size_t OPT_TSIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int margc ; 
 char** margv ; 
 char* mode ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  peer ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static void
FUNC16(int argc, char *argv[])
{
	int	fd;
	int	n;
	char	*cp, *targ;
	char	line[MAXLINE];
	struct stat sb;

	if (argc < 2) {
		FUNC10(line, "send ");
		FUNC6("(file) ");
		FUNC2(&line[FUNC11(line)], sizeof line - FUNC11(line), stdin);
		FUNC4(line);
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC7(argv[0]);
		return;
	}
	targ = argv[argc - 1];
	if (FUNC12(argv[argc - 1], ':')) {
		char *lcp;

		for (n = 1; n < argc - 1; n++)
			if (FUNC9(argv[n], ':')) {
				FUNC7(argv[0]);
				return;
			}
		lcp = argv[argc - 1];
		targ = FUNC12(lcp, ':');
		*targ++ = 0;
		if (lcp[0] == '[' && lcp[FUNC11(lcp) - 1] == ']') {
			lcp[FUNC11(lcp) - 1] = '\0';
			lcp++;
		}
		FUNC8(lcp, NULL);
	}
	if (!connected) {
		FUNC6("No target machine specified.\n");
		return;
	}
	if (argc < 4) {
		cp = argc == 2 ? FUNC13(targ) : argv[1];
		fd = FUNC5(cp, O_RDONLY);
		if (fd < 0) {
			FUNC14("%s", cp);
			return;
		}

		if (FUNC3(fd, &sb) < 0) {
			FUNC14("%s", cp);
			FUNC1(fd);
			return;
		}
		FUNC0(&options[OPT_TSIZE].o_request, "%d", sb.st_size);

		if (verbose)
			FUNC6("putting %s to %s:%s [%s]\n",
			    cp, hostname, targ, mode);
		FUNC15(peer, port, fd, targ, mode);
		FUNC1(fd);
		return;
	}
				/* this assumes the target is a directory */
				/* on a remote unix system.  hmmmm.  */
	cp = FUNC9(targ, '\0');
	*cp++ = '/';
	for (n = 1; n < argc - 1; n++) {
		FUNC10(cp, FUNC13(argv[n]));
		fd = FUNC5(argv[n], O_RDONLY);
		if (fd < 0) {
			FUNC14("%s", argv[n]);
			continue;
		}

		if (FUNC3(fd, &sb) < 0) {
			FUNC14("%s", argv[n]);
			continue;
		}
		FUNC0(&options[OPT_TSIZE].o_request, "%d", sb.st_size);

		if (verbose)
			FUNC6("putting %s to %s:%s [%s]\n",
			    argv[n], hostname, targ, mode);
		FUNC15(peer, port, fd, targ, mode);
	}
}