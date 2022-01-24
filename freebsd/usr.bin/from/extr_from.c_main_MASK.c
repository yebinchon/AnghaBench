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
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int MAXPATHLEN ; 
 char* _PATH_MAILDIR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 struct passwd* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char FUNC14 (char) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char **argv)
{
	FILE *mbox;
	struct passwd *pwd;
	int ch, count, newline;
	const char *file;
	char *sender, *p;
#if MAXPATHLEN > BUFSIZ
	char buf[MAXPATHLEN];
#else
	char buf[BUFSIZ];
#endif

	file = sender = NULL;
	count = -1;
	while ((ch = FUNC6(argc, argv, "cf:s:")) != -1)
		switch (ch) {
		case 'c':
			count = 0;
			break;
		case 'f':
			file = optarg;
			break;
		case 's':
			sender = optarg;
			for (p = sender; *p; ++p)
				*p = FUNC14(*p);
			break;
		case '?':
		default:
			FUNC15();
		}
	argc -= optind;
	argv += optind;

	if (file == NULL) {
		if (argc) {
			(void)FUNC11(buf, sizeof(buf), "%s/%s", _PATH_MAILDIR, *argv);
			file  = buf;
		} else {
			if (!(file = FUNC5("MAIL"))) {
				if (!(pwd = FUNC7(FUNC8())))
					FUNC0(1, "no password file entry for you");
				file = pwd->pw_name;
				(void)FUNC11(buf, sizeof(buf),
				    "%s/%s", _PATH_MAILDIR, file);
				file = buf;
			}
		}
	}

	/* read from stdin */
	if (FUNC12(file, "-") == 0) {
		mbox = stdin;
	} 
	else if ((mbox = FUNC4(file, "r")) == NULL) {
		FUNC0(1, "can't read %s", file);
	}
	for (newline = 1; FUNC3(buf, sizeof(buf), mbox);) {
		if (*buf == '\n') {
			newline = 1;
			continue;
		}
		if (newline && !FUNC13(buf, "From ", 5) &&
		    (!sender || FUNC9(buf + 5, sender))) {
			if (count != -1)
				count++;
			else
				FUNC10("%s", buf);
		}
		newline = 0;
	}
	if (count != -1)
		FUNC10("There %s %d message%s in your incoming mailbox.\n",
		    count == 1 ? "is" : "are", count, count == 1 ? "" : "s"); 
	FUNC2(mbox);
	FUNC1(0);
}