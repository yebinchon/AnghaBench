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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  tmpname ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_min; } ;
struct stat {scalar_t__ st_size; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  lbuf ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 char* FUNC10 () ; 
 struct passwd* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct tm* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (size_t) ; 
 int /*<<< orphan*/ * mbuf ; 
 int FUNC15 (char*) ; 
 char* notty ; 
 int /*<<< orphan*/  FUNC16 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static void
FUNC22(const char *fname)
{
	struct tm *lt;
	struct passwd *pw;
	struct stat sbuf;
	time_t now;
	FILE *fp;
	int fd;
	size_t mbufsize;
	char *tty, hostname[MAXHOSTNAMELEN], lbuf[256], tmpname[64];
	const char *whom;

	FUNC18(tmpname, sizeof(tmpname), "%s/wall.XXXXXX", _PATH_TMP);
	if ((fd = FUNC15(tmpname)) == -1 || (fp = FUNC2(fd, "r+")) == NULL)
		FUNC1(1, "can't open temporary file");
	FUNC21(tmpname);

	whom = FUNC10();
	if (!whom) {
		pw = FUNC11(FUNC12());
		whom = pw ? pw->pw_name : "???";
	}
	FUNC9(hostname, sizeof(hostname));
	FUNC19(&now);
	lt = FUNC13(&now);

	/*
	 * all this stuff is to blank out a square for the message;
	 * we wrap message lines at column 79, not 80, because some
	 * terminals wrap after 79, some do not, and we can't tell.
	 * Which means that we may leave a non-blank character
	 * in column 80, but that can't be helped.
	 */
	FUNC4(fp, "Remote Broadcast Message from %s@%s\n",
	    whom, hostname);
	tty = FUNC20(STDERR_FILENO);
	if (tty == NULL)
		tty = notty;
	FUNC4(fp, "        (%s) at %d:%02d ...\n", tty,
	    lt->tm_hour, lt->tm_min);

	FUNC16('\n', fp);

	if (fname && !(FUNC7(fname, "r", stdin)))
		FUNC1(1, "can't read %s", fname);
	while (FUNC3(lbuf, sizeof(lbuf), stdin))
		FUNC5(lbuf, fp);
	FUNC17(fp);

	if (FUNC8(fd, &sbuf))
		FUNC1(1, "can't stat temporary file");
	mbufsize = (size_t)sbuf.st_size;
	mbuf = FUNC14(mbufsize);
	if (mbuf == NULL)
		FUNC1(1, "out of memory");
	if (FUNC6(mbuf, sizeof(*mbuf), mbufsize, fp) != (u_int)mbufsize)
		FUNC1(1, "can't read temporary file");
	FUNC0(fd);
}