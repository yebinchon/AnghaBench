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

/* Variables and functions */
 int MAXLINE ; 
 int /*<<< orphan*/  connected ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int margc ; 
 char** margv ; 
 char* mode ; 
 int /*<<< orphan*/  peer ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(int argc, char *argv[])
{
	int fd;
	int n;
	char *cp;
	char *src;
	char	line[MAXLINE];

	if (argc < 2) {
		FUNC7(line, "get ");
		FUNC4("(files) ");
		FUNC1(&line[FUNC8(line)], sizeof line - FUNC8(line), stdin);
		FUNC3(line);
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC2(argv[0]);
		return;
	}
	if (!connected) {
		for (n = 1; n < argc ; n++)
			if (FUNC9(argv[n], ':') == 0) {
				FUNC4("No remote host specified and "
				    "no host given for file '%s'\n", argv[n]);
				FUNC2(argv[0]);
				return;
			}
	}
	for (n = 1; n < argc ; n++) {
		src = FUNC9(argv[n], ':');
		if (src == NULL)
			src = argv[n];
		else {
			char *lcp;

			*src++ = 0;
			lcp = argv[n];
			if (lcp[0] == '[' && lcp[FUNC8(lcp) - 1] == ']') {
				lcp[FUNC8(lcp) - 1] = '\0';
				lcp++;
			}
			FUNC6(lcp, NULL);
			if (!connected)
				continue;
		}
		if (argc < 4) {
			cp = argc == 3 ? argv[2] : FUNC10(src);
			fd = FUNC0(cp, 0644);
			if (fd < 0) {
				FUNC11("%s", cp);
				return;
			}
			if (verbose)
				FUNC4("getting from %s:%s to %s [%s]\n",
				    hostname, src, cp, mode);
			FUNC5(peer, port, fd, src, mode);
			break;
		}
		cp = FUNC10(src);         /* new .. jdg */
		fd = FUNC0(cp, 0644);
		if (fd < 0) {
			FUNC11("%s", cp);
			continue;
		}
		if (verbose)
			FUNC4("getting from %s:%s to %s [%s]\n",
			    hostname, src, cp, mode);
		FUNC5(peer, port, fd, src, mode);
	}
}