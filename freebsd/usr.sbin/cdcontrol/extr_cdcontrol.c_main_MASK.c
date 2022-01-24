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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* VERSION ; 
 scalar_t__ cdname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ optarg ; 
 scalar_t__ optind ; 
 char* FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(int argc, char **argv)
{
	int cmd;
	char *arg;

	for (;;) {
		switch (FUNC3 (argc, argv, "svhf:")) {
		case -1:
			break;
		case 's':
			verbose = 0;
			continue;
		case 'v':
			verbose = 2;
			continue;
		case 'f':
			cdname = optarg;
			continue;
		case 'h':
		default:
			FUNC12 ();
		}
		break;
	}
	argc -= optind;
	argv += optind;

	if (argc > 0 && ! FUNC9 (*argv, "help"))
		FUNC12 ();

	if (! cdname) {
		cdname = FUNC2("CDROM");
	}

	if (! cdname)
		cdname = FUNC13("MUSIC_CD");
	if (! cdname)
		cdname = FUNC13("CD_DRIVE");
	if (! cdname)
		cdname = FUNC13("DISC");
	if (! cdname)
		cdname = FUNC13("CDPLAY");

	if (argc > 0) {
		char buf[80], *p;
		int len, rc;

		for (p=buf; argc-->0; ++argv) {
			len = FUNC11 (*argv);

			if (p + len >= buf + sizeof (buf) - 1)
				FUNC12 ();

			if (p > buf)
				*p++ = ' ';

			FUNC10 (p, *argv);
			p += len;
		}
		*p = 0;
		arg = FUNC6 (buf, &cmd);
		rc = FUNC8 (cmd, arg);
		if (rc < 0 && verbose)
			FUNC14(NULL);

		return (rc);
	}

	if (verbose == 1)
		verbose = FUNC5 (0);

	if (verbose) {
		FUNC7 ("Compact Disc Control utility, version %s\n", VERSION);
		FUNC7 ("Type `?' for command list\n\n");
	}

	for (;;) {
		arg = FUNC4 (&cmd);
		if (FUNC8 (cmd, arg) < 0) {
			if (verbose)
				FUNC14(NULL);
			FUNC0 (fd);
			fd = -1;
		}
		FUNC1 (stdout);
	}
}