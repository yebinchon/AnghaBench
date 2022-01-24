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
struct termios {int /*<<< orphan*/  c_lflag; } ;
struct passwd {char* pw_passwd; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  login_cap_t ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  _PASSWORD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct passwd*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC11 (char*,char) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char*,char*) ; 
 int FUNC14 (int,struct termios*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(struct passwd *pwd, int fd, bool precrypted, bool update)
{
	int		 b, istty;
	struct termios	 t, n;
	login_cap_t	*lc;
	char		line[_PASSWORD_LEN+1];
	char		*p;

	if (fd == '-') {
		if (!pwd->pw_passwd || *pwd->pw_passwd != '*') {
			pwd->pw_passwd = "*";	/* No access */
			return (1);
		}
		return (0);
	}

	if ((istty = FUNC4(fd))) {
		if (FUNC14(fd, &t) == -1)
			istty = 0;
		else {
			n = t;
			n.c_lflag &= ~(ECHO);
			FUNC15(fd, TCSANOW, &n);
			FUNC8("%s%spassword for user %s:",
			    update ? "new " : "",
			    precrypted ? "encrypted " : "",
			    pwd->pw_name);
			FUNC2(stdout);
		}
	}
	b = FUNC10(fd, line, sizeof(line) - 1);
	if (istty) {	/* Restore state */
		FUNC15(fd, TCSANOW, &t);
		FUNC3('\n', stdout);
		FUNC2(stdout);
	}

	if (b < 0)
		FUNC0(EX_IOERR, "-%c file descriptor",
		    precrypted ? 'H' : 'h');
	line[b] = '\0';
	if ((p = FUNC13(line, "\r\n")) != NULL)
		*p = '\0';
	if (!*line)
		FUNC1(EX_DATAERR, "empty password read on file descriptor %d",
		    fd);
	if (precrypted) {
		if (FUNC11(line, ':') != NULL)
			FUNC1(EX_DATAERR, "bad encrypted password");
		pwd->pw_passwd = FUNC12(line);
	} else {
		lc = FUNC6(pwd);
		if (lc == NULL ||
				FUNC7(lc, "sha512", NULL) == NULL)
			FUNC16("setting crypt(3) format");
		FUNC5(lc);
		pwd->pw_passwd = FUNC9(line);
	}
	return (1);
}